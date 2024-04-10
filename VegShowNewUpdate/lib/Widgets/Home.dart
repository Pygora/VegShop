import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Wrap(
      children: [
        Container(
          width: 430,
          height: 1064,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFFFDFA2)),
          child: Stack(
            children: [
              Positioned(
                left: -18,
                top: 0,
                child: Container(
                  width: 448,
                  height: 283,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/Main.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 783,
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
                left: 153,
                top: 623,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Watermelon');
                  },
                child: Container(
                  height: 141,
                  padding: const EdgeInsets.only(bottom: 11),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 105,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage('Veg/Watermelon.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Watermelon',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Inika',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 3,
                top: 585,
                child: Container(
                  width: 423.73,
                  height: 110.16,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 9,
                        top: 0,
                        child: Text(
                          'Fruit Product',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0.05,
                        top: 108.02,
                        child: Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(-1.57),
                          child: Container(
                            width: 34.98,
                            height: 32.97,
                            decoration: ShapeDecoration(
                              color: Colors.black,
                              shape: StarBorder.polygon(sides: 3),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 334,
                top: 101,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/login');
                  },
                child: Container(
                  width: 79.88,
                  height: 80.58,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 79.88,
                          height: 80.58,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFA011),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 26,
                        child: SizedBox(
                          width: 80,
                          height: 42.04,
                          child: Text(
                            'Register &\nLogin',
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
                left: 110,
                top: 985,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/shop');
                  },
                child: Container(
                  width: 200,
                  height: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 200,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Color(0xFFC8C7C7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 35,
                        top: 15,
                        child: Text(
                          'Go To Shop >',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Itim',
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
                left: 0,
                top: 283,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/aboutUs');
                  },
                child: Container(
                  width: 110,
                  height: 86,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 110,
                          height: 86,
                          decoration: BoxDecoration(color: Color(0xFFFFA011)),
                        ),
                      ),
                      Positioned(
                        left: 7,
                        top: 28,
                        child: Text(
                          'About us ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Itim',
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
                left: 110,
                top: 283,
                child: Container(
                  width: 110,
                  height: 86,
                  child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/shop');
                  },
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 110,
                          height: 86,
                          decoration: BoxDecoration(color: Color(0xFFFFA011)),
                        ),
                      ),
                      Positioned(
                        left: 29,
                        top: 28,
                        child: Text(
                          'Shop',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Itim',
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
                left: 220,
                top: 283,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/cart');
                  },
                child: Container(
                  width: 110,
                  height: 86,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 110,
                          height: 86,
                          decoration: BoxDecoration(color: Color(0xFFFFA011)),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top: 28,
                        child: Text(
                          'Cart',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 330,
                top: 283,
                child: Container(
                  width: 110,
                  height: 86,
                  decoration: BoxDecoration(color: Color(0xFFFFA011)),
                ),
              ),
              Positioned(
                left: 331,
                top: 302,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/aboutUs');
                  },
                child: Text(
                  'Contact\nus',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Itim',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                )),
              ),
              Positioned(
                left: 13,
                top: 396,
                child: Text(
                  'Veg Product',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Itim',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 0.05,
                top: 502.02,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(-1.57),
                  child: Container(
                    width: 34.98,
                    height: 32.97,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: StarBorder.polygon(sides: 3),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 432,
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
                        left: 37,
                        top: 114,
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
                    ],
                  ),
                )),
              ),
              Positioned(
                left: 150,
                top: 432,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Bellpepper');
                  },
                child: Container(
                  width: 120,
                  padding: const EdgeInsets.only(
                    top: 114,
                    left: 26,
                    right: 26,
                    bottom: 10,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Bell pepper',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Inika',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 270,
                top: 432,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Cauliflower');
                  },
                child: Container(
                  height: 141,
                  padding: const EdgeInsets.only(bottom: 10),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 105,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Veg/Cauliflower.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 9),
                      Text(
                        'Cauliflower',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Inika',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 150,
                top: 434,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Bellpepper');
                  },
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
              )),
              Positioned(
                left: 33,
                top: 623,
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
                            '\$4.99/lb',
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
                  )),
                ),
              ),
              Positioned(
                left: 33,
                top: 623,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Apple');
                  },
                child: Container(
                  height: 141,
                  padding: const EdgeInsets.only(
                    top: 11,
                    left: 11,
                    right: 11,
                    bottom: 12,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 98,
                        height: 83,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Veg/Apple.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Text(
                        'Apple',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Inika',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Positioned(
                left: 273,
                top: 623,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Cherry');
                  },
                child: Container(
                  width: 120,
                  height: 141,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 39,
                        top: 111,
                        child: Text(
                          'Cherry',
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
                              image: AssetImage('Veg/Cherry.png'),
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
                left: 6,
                top: 776,
                child: Container(
                  width: 423.73,
                  height: 179,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 423.73,
                          height: 110.16,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 6,
                                top: 0,
                                child: Text(
                                  'Berry Product',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontFamily: 'Itim',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0.05,
                                top: 108.02,
                                child: Transform(
                                  transform: Matrix4.identity()
                                    ..translate(0.0, 0.0)
                                    ..rotateZ(-1.57),
                                  child: Container(
                                    width: 34.98,
                                    height: 32.97,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: StarBorder.polygon(sides: 3),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: 38,
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
                                    '\$4.99/lb',
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
                        left: 30,
                        top: 38,
                        child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Blackberries');
                  },
                        child: Container(
                          width: 120,
                          height: 141,
                          padding: const EdgeInsets.only(
                              top: 7, left: 11, right: 6, bottom: 11),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 103,
                                height: 89,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('Veg/Blackberries.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 17),
                              Text(
                                'Blackberries',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Inika',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                      Positioned(
                        left: 270,
                        top: 38,
                        child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Gojiberry');
                  },
                        child: Container(
                          width: 120,
                          height: 141,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 25,
                                top: 112,
                                child: Text(
                                  'Gojiberry',
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
                                left: 4,
                                top: 4,
                                child: Container(
                                  width: 111,
                                  height: 97,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('Veg/Gojiberry.png'),
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
                        left: 150,
                        top: 38,
                        child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/tomato', arguments: 'Blueberry');
                  },
                        child: Container(
                          width: 120,
                          height: 141,
                          padding: const EdgeInsets.only(bottom: 11),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 120,
                                height: 105,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('Veg/Blueberry.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Blueberry',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Inika',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  )],
                  ),
                ),
              ),
              Positioned(
                left: 57,
                top: 97,
                child: SizedBox(
                  width: 217,
                  height: 89,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Veg Shop\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'by Team Veggies',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
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
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
