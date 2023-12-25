import 'package:flutter/material.dart';
import 'ingredients.dart';

class foodtypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          width: 500,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/down.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 200,
                top: 10,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/m.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 22.70,
                        offset: Offset(5, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ingredients()),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 14,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/معجنات.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 22.70,
                        offset: Offset(5, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 200,
                top: 170,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/شاميه.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 22.70,
                        offset: Offset(5, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 170,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/لحوم.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 22.70,
                        offset: Offset(5, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 200,
                top: 341,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/شوربات.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 22.70,
                        offset: Offset(5, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 511,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/مقبلات.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 22.70,
                        offset: Offset(5, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 200,
                top: 682,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/سلطات.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 22.70,
                        offset: Offset(5, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 682,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/حلويات.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 22.70,
                        offset: Offset(5, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 341,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/صواني.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 22.70,
                        offset: Offset(5, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 200,
                top: 511,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/اطباق جانبيه.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 22.70,
                        offset: Offset(5, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 54,
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
                        left: 168,
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
                        left: 24,
                        top: 171,
                        child: SizedBox(
                          width: 35,
                          height: 17,
                          child: Text(
                            'لــحــوم',
                            style: TextStyle(
                              color: Color(0xFF156260),
                              fontSize: 11,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 178,
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
                        left: 20,
                        top: 341,
                        child: SizedBox(
                          width: 46,
                          height: 17,
                          child: Text(
                            'صـــوانـــي',
                            style: TextStyle(
                              color: Color(0xFF156260),
                              fontSize: 11,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 511,
                        child: SizedBox(
                          width: 69,
                          height: 17,
                          child: Text(
                            'اطباق جانبية',
                            style: TextStyle(
                              color: Color(0xFF156260),
                              fontSize: 11,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 12,
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
                        left: 176,
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
              Positioned(
                left: 74,
                top: 823,
                child: SizedBox(
                  width: 48,
                  height: 17,
                  child: Text(
                    'حـــلـويـات',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 240,
                top: 823,
                child: SizedBox(
                  width: 50,
                  height: 17,
                  child: Text(
                    'ســلـطات',
                    style: TextStyle(
                      color: Colors.white,
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
    );
  }
}


