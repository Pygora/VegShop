import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Cart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<Cart> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  User? _user;
  List<String> _cartItems = [];
  Map<String, int> _itemQuantities = {};

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
      // Retrieve cart data
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
          _itemQuantities = Map.fromIterable(_cartItems,
              key: (item) => item, value: (_) => 1);
        });
        return;
      }
    }
    // Cart data doesn't exist or is in an unexpected format
    // Initialize _cartData as an empty list
    setState(() {
      _cartItems = [];
      _itemQuantities = {};
    });
  }

  void _navigateToPaymentPage() {
    // You can navigate to the payment page with the necessary information
    // For demonstration, let's print the selected quantities
    print('Selected Quantities: $_itemQuantities');
    // Navigate to payment page here
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PaymentPage(
              cartItems: _cartItems,
              itemQuantities: _itemQuantities,
              user: _user)),
    );
  }

  void _removeItemFromCart(String itemName) async {
    try {
      // Remove item from the database
      await FirebaseFirestore.instance
          .collection('users')
          .doc(_user!.uid)
          .update({
        'cart': FieldValue.arrayRemove([itemName]),
      });

      // Reload the cart page
      Navigator.pushReplacementNamed(context, '/cart');
    } catch (e) {
      print('Error removing item from cart: $e');
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Container(
        color: Color(0xFFFFDFA2),
        constraints: BoxConstraints(maxWidth: 430),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _cartItems.length,
                itemBuilder: (context, index) {
                  String itemName = _cartItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'Veg/$itemName.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            itemName,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Quantity',
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              setState(() {
                                _itemQuantities[itemName] =
                                    int.tryParse(value) ?? 0;
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            _removeItemFromCart(itemName);
                          },
                          child: Text('Remove'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: _navigateToPaymentPage,
              child: Text('Proceed to Payment'),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentPage extends StatefulWidget {
  final List<String> cartItems;
  final Map<String, int> itemQuantities;
  final User? user;
  const PaymentPage(
      {required this.cartItems,
      required this.itemQuantities,
      required this.user});

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  double totalCost = 0.0; // Initialize total cost
  int itemsProcessed = 0;

  void completeTransaction() async {
    Navigator.pushNamed(context, '/map');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Summary'),
      ),
      body: Container(
        color: Color(0xFFFFDFA2),
        constraints: BoxConstraints(maxWidth: 430),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Item Name",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Quantity",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Price',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.cartItems.length,
                itemBuilder: (context, index) {
                  String itemName = widget.cartItems[index];
                  int quantity = widget.itemQuantities[itemName] ?? 0;
                  return StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection("Veg")
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return CircularProgressIndicator();
                      }
                      var index = 0; // Set your desired index
                      var item = snapshot.data!.docs[index];
                      double itemPrice = double.parse(item['$itemName']);
                      double totalPrice = itemPrice * quantity;
                      totalPrice = double.parse(totalPrice.toStringAsFixed(2));
                      totalCost += totalPrice; // Update total cost
                      itemsProcessed++;

                      if (itemsProcessed == widget.cartItems.length) {
                        // All items processed, print total cost
                        WidgetsBinding.instance!.addPostFrameCallback((_) {
                          setState(() {}); // Trigger a rebuild to update UI
                        });
                      }

                      return PaymentSummaryWidget(
                        itemName: itemName,
                        quantity: quantity,
                        price: totalPrice,
                      );
                    },
                  );
                },
              ),
            ),
            if (itemsProcessed == widget.cartItems.length)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Total Cost: \$${totalCost.toStringAsFixed(2)}', // Display total cost
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ElevatedButton(
              onPressed: completeTransaction,
              child: Text('Complete Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentSummaryWidget extends StatelessWidget {
  final String itemName;
  final int quantity;
  final double price;

  const PaymentSummaryWidget({
    required this.itemName,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            'Veg/$itemName.png',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              itemName,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              '$quantity',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              '\$$price',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
