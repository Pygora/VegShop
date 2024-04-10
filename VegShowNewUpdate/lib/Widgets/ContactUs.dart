import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Wrap(
      children: [
        Container(
          width: 430,
          height: 932,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFFFDFA2)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 430,
                  height: 277,
                  decoration: BoxDecoration(
                    image: DecorationImage(
image: AssetImage('images_Aboutus/Top.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 652,
                child: Container(
                  width: 430,
                  height: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
image: AssetImage('images_Aboutus/bottom.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 118,
                top: 28,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/');
                  },
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Veg Shop\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: 'Itim',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'by Team Veggies',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Itim',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                )),
              ),
              Positioned(
                left: 0,
                top: 118,
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
                )),
                ),
              ),
              Positioned(
                left: 110,
                top: 118,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/shop');
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
                top: 118,
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
                top: 118,
                child: Container(
                  width: 110,
                  height: 86,
                  decoration: BoxDecoration(color: Color(0xFFFF550C)),
                ),
              ),
              Positioned(
                left: 336,
                top: 137,
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
                ),
              ),
              Positioned(
                left: 11,
                top: 238,
                child: Container(
                  width: 409,
                  height: 523,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 409,
                          height: 523,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF5F5F5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 83,
                        top: 13,
                        child: Text(
                          'Contact Us',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontFamily: 'Itim',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 72,
                        top: 98,
                        child: Container(
                          width: 210,
                          height: 55,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
image: AssetImage('images_Aboutus/Fbook.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 86,
                                top: 9,
                                child: Text(
                                  'Veg Shop',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontFamily: 'Itim',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 72,
                        top: 266,
                        child: Container(
                          width: 281,
                          height: 55.26,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 84,
                                top: 5,
                                child: Text(
                                  '099-999-9999',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontFamily: 'Itim',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 55,
                                  height: 55.26,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
image: AssetImage('images_Aboutus/Call.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 72,
                        top: 346,
                        child: Container(
                          width: 303,
                          height: 55,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 84,
                                top: 7,
                                child: Text(
                                  'Mahidol -->Link',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontFamily: 'Itim',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
image: AssetImage('images_Aboutus/local.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 118,
                        top: 414,
                        child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/aboutUs');
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
                                left: 41,
                                top: 15,
                                child: Text(
                                  'About Us >',
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
                        left: 72,
                        top: 186,
                        child: Container(
                          width: 208,
                          height: 55,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 84,
                                top: 3,
                                child: Text(
                                  'Veg Shop',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontFamily: 'Itim',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
image: AssetImage('images_Aboutus/Ingame.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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