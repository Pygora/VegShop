import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Veg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
    body : StreamBuilder(
    stream :
    FirebaseFirestore.instance.collection("Veg").snapshots(),
    builder : (context , snapshot) {
    var index = 0; // Set your desired index
    var Tomato = snapshot.data?.docs[index]["Tomato"];
    var Bellpepper = snapshot.data?.docs[index]["Bellpepper"];
    var Cauliflower = snapshot.data?.docs[index]["Cauliflower"];
    var Potatoes = snapshot.data?.docs[index]["Potatoes"];
    var Carrot = snapshot.data?.docs[index]["Carrot"];
    var Cabbage = snapshot.data?.docs[index]["Cabbage"];
    var Garlic = snapshot.data?.docs[index]["Garlic"];
    var Pumpkin = snapshot.data?.docs[index]["Pumpkin"];

    return SingleChildScrollView(
        child: Wrap(
      children: [
        Container(
          width: 430,
          height: 1000,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFFFDFA2)),
          child: Stack(
            children: [
              Positioned(
                left: 34,
                top: 187,
                child: SizedBox(
                  width: 151,
                  height: 37,
                  child: Text(
                    'Veg Product',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inika',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 224,
                child: Container(
                  width: 339,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 51,
                child: Container(
                  width: 430,
                  height: 52,
                  decoration: BoxDecoration(color: Color(0xFFFFA011)),
                ),
              ),
              Positioned(
                left: 368,
                top: 54,
                child: Container(
                  width: 58,
                  height: 57,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: StarBorder.polygon(sides: 3),
                  ),
                ),
              ),
              Positioned(
                left: 385,
                top: 54,
                child: SizedBox(
                  width: 41,
                  height: 25,
                  child: Text(
                    'veg shop logo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inika',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 76,
                top: 51,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/aboutUs');
                  },
                child: Container(
                  width: 72,
                  height: 52,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 72,
                              height: 52,
                              decoration:
                                  BoxDecoration(color: Color(0xFFFFA011)),
                            ),
                          ),
                          Positioned(
                            left: 4.58,
                            top: 16.93,
                            child: SizedBox(
                              width: 62.84,
                              height: 18.14,
                              child: Text(
                                'About us ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Itim',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ),
              ),
              Positioned(
                left: 2,
                top: 50,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/aboutUs');
                  },
                  child: Container(
                    width: 72,
                    height: 52,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 72,
                            height: 52,
                            decoration: BoxDecoration(color: Color(0xFFFFA011)),
                          ),
                        ),
                        Positioned(
                          left: 4.58,
                          top: 16.93,
                          child: SizedBox(
                            width: 62.84,
                            height: 18.14,
                            child: Text(
                              'Veg Shop',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Itim',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 148,
                top: 51,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/shop');
                  },
                child: Container(
                  width: 72,
                  height: 52,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 72,
                          height: 52,
                          decoration: BoxDecoration(color: Color(0xADEF4949)),
                        ),
                      ),
                      Positioned(
                        left: 18.98,
                        top: 16.93,
                        child: SizedBox(
                          width: 40,
                          height: 18.14,
                          child: Text(
                            'Shop',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Itim',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              ),
              Positioned(
                left: 220,
                top: 51,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/cart');
                  },
                child: Container(
                  width: 72,
                  height: 52,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 72,
                          height: 52,
                          decoration: BoxDecoration(color: Color(0xFFFFA011)),
                        ),
                      ),
                      Positioned(
                        left: 20.95,
                        top: 16.93,
                        child: SizedBox(
                          width: 32.07,
                          height: 18.14,
                          child: Text(
                            'Cart',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Itim',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 292,
                top: 51,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/contactUs');
                  },
                child: Container(
                  width: 72,
                  height: 52,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 72,
                          height: 52,
                          decoration: BoxDecoration(color: Color(0xFFFFA011)),
                        ),
                      ),
                      Positioned(
                        left: 5.24,
                        top: 11.49,
                        child: SizedBox(
                          width: 62.84,
                          height: 36.28,
                          child: Text(
                            'Contract\nus',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Itim',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              ),
              Positioned(
                left: 0,
                top: 723,
                child: Container(
                  width: 430,
                  height: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/Bottom.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -9,
                top: 103,
                child: Container(
                  width: 439,
                  height: 52,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 109,
                        top: 0,
                        child: Container(
                          width: 110,
                          height: 52,
                          decoration: BoxDecoration(color: Color(0xFFFC7C54)),
                        ),
                      ),
                      Positioned(
                        left: 118,
                        top: 16,
                        child: Text(
                          'Veg Product',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/shop');
                  },
                        child: Container(
                          width: 110,
                          height: 52,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 110,
                                  height: 52,
                                  decoration:
                                      BoxDecoration(color: Color(0xFFFCEACF)),
                                ),
                              ),
                              Positioned(
                                left: 19,
                                top: 16,
                                child: Text(
                                  'All Product',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inika',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                      ),
                      Positioned(
                        left: 219,
                        top: 0,
                        child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/fruit');
                  },
                        child: Container(
                          width: 110,
                          height: 52,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 110,
                                  height: 52,
                                  decoration:
                                      BoxDecoration(color: Color(0xFFFCEACF)),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 16,
                                child: Text(
                                  'Fruit Product',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inika',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                      ),
                      Positioned(
                        left: 329,
                        top: 0,
                        child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/berry');
                  },
                        child: Container(
                          width: 110,
                          height: 52,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 110,
                                  height: 52,
                                  decoration:
                                      BoxDecoration(color: Color(0xFFFCEACF)),
                                ),
                              ),
                              Positioned(
                                left: 2,
                                top: 16,
                                child: Text(
                                  'Berry Product',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inika',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 430,
                  height: 51,
                  decoration: BoxDecoration(color: Color(0xFFFFDFA2)),
                ),
              ),
              Positioned(
                left: -19,
                top: 2,
                child: Container(
                  width: 449,
                  height: 49,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/Top.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 301,
                top: 3,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Veg Shop\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Itim',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'by Team Veggies',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Itim',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              Positioned(
                left: 17,
                top: 244,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Tomato');
                  },
                child: Container(
                  width: 120,
                  height: 141,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -14,
                        top: 0,
                        child: Container(
                          width: 158,
                          height: 107,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('Veg/Tomato.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 111,
                        child: Text(
                          'Tomato',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 74,
                        top: 124,
                        child: SizedBox(
                          width: 57,
                          child: Text(
                            '\$$Tomato/Ib',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inika',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              ),
              Positioned(
                left: 17,
                top: 244,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Tomato');
                  },
                child: Container(
                  width: 120,
                  height: 141,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -14,
                        top: 0,
                        child: Container(
                          width: 158,
                          height: 107,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('Veg/Tomato.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 111,
                        child: Text(
                          'Tomato',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 74,
                        top: 124,
                        child: SizedBox(
                          width: 57,
                          child: Text(
                            '\$$Tomato/Ib',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inika',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              ),
              Positioned(
                left: 155,
                top: 244,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Bellpepper');
                  },
                child: Container(
                  width: 120,
                  height: 141,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 120,
                          height: 105,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage('Veg/Bellpepper.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 111,
                        child: Text(
                          'Bell pepper',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 74,
                        top: 124,
                        child: SizedBox(
                          width: 57,
                          child: Text(
                            '\$$Bellpepper/Ib',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inika',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 293,
                top: 244,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Cauliflower');
                  },
                child: Container(
                  width: 120,
                  height: 141,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 11,
                        top: 111,
                        child: Text(
                          'Cauliflower',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 74,
                        top: 124,
                        child: SizedBox(
                          width: 57,
                          child: Text(
                            '\$$Cauliflower/Ib',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inika',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 68,
                        top: 60,
                        child: Container(
                          width: 1,
                          height: 41,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: StarBorder.polygon(sides: 3),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 120,
                          height: 105,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('Veg/Cauliflower.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 17,
                top: 413,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Potatoes');
                  },
                child: Container(
                  width: 120,
                  height: 141,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 11,
                        top: 111,
                        child: Text(
                          'Potatoes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 74,
                        top: 124,
                        child: SizedBox(
                          width: 57,
                          child: Text(
                            '\$$Potatoes/Ib',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inika',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 18,
                        child: Container(
                          width: 120,
                          height: 69,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('Veg/Potatoes.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 17,
                top: 582,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Garlic');
                  },
                child: Container(
                  width: 120,
                  height: 141,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -4,
                        top: 13,
                        child: Container(
                          width: 121,
                          height: 82,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('Veg/Garlic.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 111,
                        child: Text(
                          'Garlic',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 74,
                        top: 124,
                        child: SizedBox(
                          width: 57,
                          child: Text(
                            '\$$Garlic/Ib',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inika',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 158,
                top: 582,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Pumpkin');
                  },
                child: Container(
                  width: 120,
                  height: 141,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 10,
                        child: Container(
                          width: 116,
                          height: 87,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('Veg/Pumpkin.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 111,
                        child: Text(
                          'Pumpkin',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 74,
                        top: 124,
                        child: SizedBox(
                          width: 57,
                          child: Text(
                            '\$$Pumpkin/Ib',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inika',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 293,
                top: 413,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Cabbage');
                  },
                child: Container(
                  width: 120,
                  height: 141,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -14,
                        top: 0,
                        child: Container(
                          width: 158,
                          height: 107,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('Veg/Cabbage.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 111,
                        child: Text(
                          'Cabbage',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 74,
                        top: 124,
                        child: SizedBox(
                          width: 57,
                          child: Text(
                            '\$$Cabbage/Ib',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inika',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 155,
                top: 413,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Carrot');
                  },
                child: Container(
                  width: 120,
                  height: 141,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 11,
                        top: 111,
                        child: Text(
                          'Carrot',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 74,
                        top: 124,
                        child: SizedBox(
                          width: 57,
                          child: Text(
                            '\$$Carrot/Ib',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Inika',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 156,
                top: 424,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Carrot');
                  },
                child: Container(
                  width: 119,
                  height: 87,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('Veg/Carrot.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
          )],
          ),
        ),
      ],
    ));
  }));
}
}