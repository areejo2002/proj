import 'package:flutter/material.dart';

void main() {
  runApp(foodtypes());
}

class foodtypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: 360,
                height: 800,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Color(0xFF156260)),
                child: Stack(
                  children: [
                    Positioned(
                      left: -85,
                      top: -138,
                      child: Container(
                        width: 530,
                        height: 1155,
                        decoration: BoxDecoration(color: Color(0xFF156260)),
                      ),
                    ),
                    Positioned(
                      left: -68,
                      top: -143,
                      child: Container(
                        width: 462,
                        height: 869,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(153),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 602,
                      child: Container(
                        width: 65,
                        height: 350,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                    Positioned(
                      left: 35,
                      top: 37,
                      child: Container(
                        height: 666,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 301,
                                height: 836,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 301,
                                        height: 823,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 169,
                                              top: 0,
                                              child: Container(
                                                width: 132,
                                                height: 132,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: AssetImage("assets/m.jpg"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0x3F000000),
                                                      blurRadius: 22.70,
                                                      offset: Offset(5, 6),
                                                      spreadRadius: 0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 341,
                                              child: Container(
                                                width: 132,
                                                height: 132,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: AssetImage("assets/صواني.jpg"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0x3F000000),
                                                      blurRadius: 22.70,
                                                      offset: Offset(5, 6),
                                                      spreadRadius: 0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 169,
                                              top: 511,
                                              child: Container(
                                                width: 132,
                                                height: 133,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: AssetImage("assets/شاميه.jpeg"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0x3F000000),
                                                      blurRadius: 22.70,
                                                      offset: Offset(5, 6),
                                                      spreadRadius: 0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 43,
                                              top: 138,
                                              child: Container(
                                                width: 227,
                                                height: 528,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 1,
                                                      top: 0,
                                                      child: SizedBox(
                                                        width: 45,
                                                        height: 17,
                                                        child: Text(
                                                          'معجنات',
                                                          style: TextStyle(
                                                            color: Color(0xFF156260),
                                                            fontSize: 13,
                                                            fontFamily: 'Tajawal',
                                                            fontWeight: FontWeight.w500,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 157,
                                                      top: 171,
                                                      child: SizedBox(
                                                        width: 70,
                                                        height: 17,
                                                        child: Text(
                                                          'اكلات شامية',
                                                          style: TextStyle(
                                                            color: Color(0xFF156260),
                                                            fontSize: 13,
                                                            fontFamily: 'Tajawal',
                                                            fontWeight: FontWeight.w500,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 6,
                                                      top: 171,
                                                      child: SizedBox(
                                                        width: 35,
                                                        height: 17,
                                                        child: Text(
                                                          'لــحــوم',
                                                          style: TextStyle(
                                                            color: Color(0xFF156260),
                                                            fontSize: 13,
                                                            fontFamily: 'Tajawal',
                                                            fontWeight: FontWeight.w500,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 167,
                                                      top: 341,
                                                      child: SizedBox(
                                                        width: 51,
                                                        height: 17,
                                                        child: Text(
                                                          'شــوربــات',
                                                          style: TextStyle(
                                                            color: Color(0xFF156260),
                                                            fontSize: 13,
                                                            fontFamily: 'Tajawal',
                                                            fontWeight: FontWeight.w500,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 0,
                                                      top: 341,
                                                      child: SizedBox(
                                                        width: 46,
                                                        height: 17,
                                                        child: Text(
                                                          'صـــوانـــي',
                                                          style: TextStyle(
                                                            color: Color(0xFF156260),
                                                            fontSize: 13,
                                                            fontFamily: 'Tajawal',
                                                            fontWeight: FontWeight.w500,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 158,
                                                      top: 511,
                                                      child: SizedBox(
                                                        width: 69,
                                                        height: 17,
                                                        child: Text(
                                                          'اطباق جانبية',
                                                          style: TextStyle(
                                                            color: Color(0xFF156260),
                                                            fontSize: 13,
                                                            fontFamily: 'Tajawal',
                                                            fontWeight: FontWeight.w500,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 1,
                                                      top: 511,
                                                      child: SizedBox(
                                                        width: 45,
                                                        height: 17,
                                                        child: Text(
                                                          'مــقـبلات',
                                                          style: TextStyle(
                                                            color: Color(0xFF156260),
                                                            fontSize: 13,
                                                            fontFamily: 'Tajawal',
                                                            fontWeight: FontWeight.w500,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 165,
                                                      top: 0,
                                                      child: SizedBox(
                                                        width: 55,
                                                        height: 17,
                                                        child: Text(
                                                          'معكرونات',
                                                          style: TextStyle(
                                                            color: Color(0xFF156260),
                                                            fontSize: 13,
                                                            fontFamily: 'Tajawal',
                                                            fontWeight: FontWeight.w500,
                                                            height: 0,
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
                                    Positioned(
                                      left: -31,
                                      top: 703,
                                      child: Container(
                                        width: 461,
                                        height: 777,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF156260),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(152),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 158.07,
                                      top: 735,
                                      child: Container(
                                        width: 40.83,
                                        height: 40.83,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/user.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 56,
                                      top: 735,
                                      child: Container(
                                        width: 41.80,
                                        height: 40.83,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/home.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 259.17,
                                      top: 735,
                                      child: Container(
                                        width: 40.83,
                                        height: 40.83,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(" assets/cart.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





