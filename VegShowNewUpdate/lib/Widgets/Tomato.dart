import 'package:flutter/material.dart';
import 'package:wikipedia/wikipedia.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore package
import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth package

class Tomato extends StatefulWidget {
  final String name;
  Tomato({required this.name});
  @override
  _TomatoState createState() => _TomatoState();
}

class _TomatoState extends State<Tomato> {
  bool _loading = true; // Set loading to true initially
  WikipediaSearch? _searchResult;
  String? _detailedDescription;
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance; // Firestore instance
  User? _user; // Make user nullable

  @override
  void initState() {
    super.initState();
    checkCurrentUser();
    // Automatically fetch tomato information when the widget initializes
    fetchTomatoInformation(widget.name); // Pass the name here
  }

  Future<void> checkCurrentUser() async {
    _user = FirebaseAuth.instance.currentUser;
    print(_user);
  }

  @override
  Widget build(BuildContext context) {
    print('Fetching tomato information for: ${widget.name}');

    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.name} Information'), // Use widget.name here
        ),
        body: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection("Veg").snapshots(),
            builder: (context, snapshot) {
              var index = 0; // Set your desired index
              var Price = snapshot.data?.docs[index]["${widget.name}"];
              return _loading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : _searchResult != null
                      ? Container(
                          color: Color(0xFFFFDFA2), // Set background color
                          constraints: BoxConstraints(maxWidth: 430),
                          child: Card(
                            elevation: 5,
                            margin: const EdgeInsets.all(16),
                            color: Colors.white, // Set card color to white
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'Veg/${widget.name}.png'),
                                        // Use widget.name here
                                        height: 150, // Adjust height as needed
                                        width: 150, // Adjust width as needed
                                      ),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              _searchResult!.title!,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            Text(
                                              'Price: \$$Price/lb', // Display price here
                                              style: const TextStyle(fontSize: 16),
                                            ),
                                            const SizedBox(height: 16),
                                            ElevatedButton(
                                              onPressed: () {
                                                addToCart(widget
                                                    .name); // Pass item name to addToCart
                                              },
                                              child: Text(
                                                'Add to Cart',
                                                style: const TextStyle(fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Text(
                                        _detailedDescription ?? '',
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : SizedBox(); // Empty container when there is no data
            }));
  }

  void addToCart(String itemName) async {
    // Check if user is authenticated
    if (_user == null) {
      Navigator.pushNamed(context, '/login');
      return;
    }

    try {
      // Check if item already exists in user's cart
      DocumentSnapshot cartSnapshot =
          await _firestore.collection('users').doc(_user!.uid).get();

      Map<String, dynamic>? cartData =
          cartSnapshot.data() as Map<String, dynamic>?;

      if (cartData != null && cartData.containsKey('cart')) {
        dynamic cart = cartData['cart'];
        if (cart is List) {
          // If cart is a list, directly check if item exists
          if (cart.contains(itemName)) {
            _showSnackBar('Item already exists in the cart');
            return; // If item exists, do not add again
          }
          // If item doesn't exist, update the cart with the new item
          await _firestore.collection('users').doc(_user!.uid).update({
            'cart': FieldValue.arrayUnion([itemName])
          });
        }
      } else {
        // If cart doesn't exist or is empty, create it with the new item
        await _firestore.collection('users').doc(_user!.uid).set({
          'cart': [itemName]
        }, SetOptions(merge: true));
      }

      _showSnackBar('Item added to cart successfully');
    } catch (error) {
      print('Error adding item to cart: $error');
      _showSnackBar('Failed to add item to cart');
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  Future<void> fetchTomatoInformation(String name) async {
    // Pass name as parameter
    setState(() {
      _loading = true;
    });

    try {
      Wikipedia instance = Wikipedia();
      var searchResult = await instance.searchQuery(
        searchQuery: name, // Use name here
        limit: 1,
      );

      if (searchResult!.query!.search!.isNotEmpty) {
        var pageId = searchResult.query!.search![0].pageid;
        if (pageId != null) {
          var pageResult =
              await instance.searchSummaryWithPageId(pageId: pageId);
          setState(() {
            _searchResult = searchResult.query!.search![0];
            _detailedDescription = pageResult?.extract;
          });
        }
      } else {
        print("No results found for '$name'");
      }
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }
}
