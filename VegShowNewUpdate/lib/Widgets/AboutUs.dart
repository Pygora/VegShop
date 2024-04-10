import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
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
                top: 34,
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
                          fontFamily: 'Inika',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'by Team Veggies',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Inika',
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
                left: 11,
                top: 236,
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
                        left: 211,
                        top: 97,
                        child: Text(
                          'Welcome to FreshGreens, your \npremier online destination for all \nthings fresh and green! At \nFreshGreens, we are passionate \nabout providing you with the finest\nselection of high-quality, locally\nsourced vegetables to make healthy\nliving accessible and enjoyable.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 104,
                        top: 13,
                        child: Text(
                          'About Us',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 25,
                        top: 89,
                        child: Container(
                          width: 180,
                          height: 128,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images_Aboutus/main.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 25,
                        top: 221,
                        child: Text(
                          'Our journey began with a commitment to supporting local farmers\nand promoting sustainable agriculture. We take pride in curating \na diverse range of fresh produce, from vibrant organic greens to\ncolorful heirloom tomatoes. With user-friendly navigation and a \nseamless online shopping experience, FreshGreens is your one-stop\nveg shop for all your culinary needs. Our team is dedicated to \nensuring that every order is packed with care and delivered\npromptly to your doorstep. Join us on our mission to make fresh, \nnutritious vegetables a staple in every household. FreshGreens – \nwhere freshness meets convenience!',
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
                        left: 111,
                        top: 418,
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
                top: 127,
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
                          decoration: BoxDecoration(color: Color(0xFFFF550C)),
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
                            fontFamily: 'Inika',
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
                left: 110,
                top: 127,
                child: GestureDetector(
                  onTap: () {
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
                              fontFamily: 'Inika',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 220,
                top: 127,
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
              Positioned(
                left: 330,
                top: 127,
                child: Container(
                  width: 110,
                  height: 86,
                  decoration: BoxDecoration(color: Color(0xFFFFA011)),
                ),
              ),
              Positioned(
                left: 336,
                top: 146,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the "AboutUs" page
                    Navigator.pushNamed(context, '/contactUs');
                  },
                child: Text(
                  'Contact\nus',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Inika',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              )),
            ],
          ),
        ),
      ],
    ));
  }
}
