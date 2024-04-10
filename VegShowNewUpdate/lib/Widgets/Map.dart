import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController itemNameController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  User? _user;
  List<String> _cartItems = [];

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    _user = FirebaseAuth.instance.currentUser;
    if (_user == null) {
      Navigator.pushNamed(context, '/');
    } else {
      try {
        await _fetchCartData();
      } catch (e) {
        print('Error fetching cart data: $e');
        setState(() {
          _cartItems = [];
        });
      }
    }
  }

  Future<void> _fetchCartData() async {
    DocumentSnapshot cartSnapshot =
        await _firestore.collection('users').doc(_user!.uid).get();
    if (cartSnapshot.exists) {
      Map<String, dynamic>? cartData =
          cartSnapshot.data() as Map<String, dynamic>?;
      if (cartData != null && cartData.containsKey('cart')) {
        setState(() {
          _cartItems = List<String>.from(cartData['cart']);
        });
        return;
      }
    }
  }

  void _submitDeliveryOrder() async {
    final User? user = _auth.currentUser;
    if (user != null) {
      final String itemName = itemNameController.text;
      final String street = streetController.text;
      final String district = districtController.text;
      final String city = cityController.text;
      final String zipcode = zipcodeController.text;

      if (itemName.isNotEmpty &&
          street.isNotEmpty &&
          district.isNotEmpty &&
          city.isNotEmpty &&
          zipcode.isNotEmpty) {
        String fullAddress =
            '$itemName, $street, $district, $city, $zipcode';

        await _fetchCartData();

        String orderInfo = "Order Information: " + _cartItems.join(", ");
        fullAddress += "\n$orderInfo";

        DateTime currentTime = DateTime.now();
        fullAddress += "\nOrdered At: $currentTime";

        await _firestore
            .collection('users')
            .doc(user.uid)
            .get()
            .then((doc) async {
          if (doc.exists) {
            await _firestore.collection('users').doc(user.uid).update({
              'Delivery Order': FieldValue.arrayUnion([fullAddress]),
              'cart': [],
            });
          } else {
            await _firestore.collection('users').doc(user.uid).set({
              'Delivery Order': [fullAddress],
              'cart': [],
            });
          }
        });

        await _firestore
            .collection('users')
            .doc(user.uid)
            .collection('cart')
            .get()
            .then((querySnapshot) {
          querySnapshot.docs.forEach((doc) {
            doc.reference.delete();
          });
        });

        Navigator.pushNamed(context, '/');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery Map'),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 430),
          child: Column(
            children: [
              Image(
                image: AssetImage('images/Map.png'),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: itemNameController,
                  decoration: InputDecoration(
                    labelText: 'Delivery Order',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: streetController,
                  decoration: InputDecoration(
                    labelText: 'Street Address',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: districtController,
                  decoration: InputDecoration(
                    labelText: 'District',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: cityController,
                  decoration: InputDecoration(
                    labelText: 'City',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: zipcodeController,
                  decoration: InputDecoration(
                    labelText: 'Zip Code',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _submitDeliveryOrder,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
