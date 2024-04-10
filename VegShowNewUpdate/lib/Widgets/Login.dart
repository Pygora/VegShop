import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  bool _isLoginPage = true;

  void _togglePage() {
    setState(() {
      _isLoginPage = !_isLoginPage;
      _emailController.clear();
      _passwordController.clear();
      _confirmPasswordController.clear();
    });
  }

  Future<void> _showErrorDialog(String errorMessage) async {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(errorMessage),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _handleLoginError(dynamic e) {
    String errorMessage;
    switch ((e as FirebaseAuthException).code) {
      case 'user-not-found':
        errorMessage = 'User not found. Please check your email.';
        break;
      case 'wrong-password':
        errorMessage = 'Incorrect password. Please try again.';
        break;
      default:
        errorMessage = 'Login failed: ${e.message}';
    }
    _showErrorDialog(errorMessage);
  }

  void _handleRegistrationError(dynamic e) {
    String errorMessage;
    switch ((e as FirebaseAuthException).code) {
      case 'email-already-in-use':
        errorMessage = 'Email is already in use. Please use a different email.';
        break;
      default:
        errorMessage = 'Registration failed: ${e.message}';
    }
    _showErrorDialog(errorMessage);
  }

  void _login() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      print('Login successful: ${userCredential.user!.email}');
        Navigator.pushNamed(context, '/');
    } catch (e) {
      print('Login failed: $e');
      _handleLoginError(e);
    }
  }

  void _register() async {
    try {
      if (_passwordController.text != _confirmPasswordController.text) {
        _showErrorDialog("Passwords do not match.");
        return;
      }
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      await _firestore.collection('users').doc(userCredential.user!.uid).set({
        'cart': [],
        // Empty cart for new user
      });

      print('Registration successful: ${userCredential.user!.email}');
      Navigator.pushNamed(context, '/');
    } catch (e) {
      print('Registration failed: $e');
      _handleRegistrationError(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navigate to home page when back button is pressed
        Navigator.pushReplacementNamed(context, '/');
        return false; // Prevent default behavior
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(_isLoginPage ? 'Login' : 'Register'),
          actions: _isLoginPage
              ? null
              : [
                  IconButton(
                    icon: Icon(Icons.logout),
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                      _togglePage(); // Switch to login page after logout
                    },
                  ),
                ],
        ),
        body: Container(
          color: Color(0xFFFFDFA2),
          constraints: BoxConstraints(maxWidth: 430),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              constraints: BoxConstraints(maxWidth: 430),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Veg Shop by \nTeam Veggies',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20.0),
                    if (!_isLoginPage)
                      TextField(
                        controller: _confirmPasswordController,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        obscureText: true,
                      ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        _isLoginPage ? _login() : _register();
                      },
                      child: Text(_isLoginPage ? 'Login' : 'Register'),
                    ),
                    SizedBox(height: 20.0),
                    TextButton(
                      onPressed: _togglePage,
                      child: Text(_isLoginPage
                          ? 'Create an account'
                          : 'Already have an account? Login'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
