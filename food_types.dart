import 'package:flutter/material.dart';
class foodtypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: SingleChildScrollView(
          child: Container(
          height: 800,
          width: 360,
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
                top: -145,
                child: Container(
                  padding: const EdgeInsets.only(top: 68, left: 9),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 301,
                        height: 840,
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
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
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
                                      left: 169,
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
                                      left: 0,
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
                                      left: 169,
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
                                      left: 0,
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
                                      left: 169,
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
                                      left: 0,
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
                                      left: 0,
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
                                      left: 169,
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
                                    Positioned(
                                      left: 151.07,
                                      top: 708.70,
                                      child: Container(
                                        width: 40.83,
                                        height: 40.83,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://via.placeholder.com/41x41"),
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
                              left: 40,
                              top: 823,
                              child: SizedBox(
                                width: 48,
                                height: 17,
                                child: Text(
                                  'حـــلـويـات',
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
                              left: 211,
                              top: 823,
                              child: SizedBox(
                                width: 50,
                                height: 17,
                                child: Text(
                                  'ســلـطات',
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
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 40.83,
                          height: 40.83,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/home.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -3.75,
                        top: -8.29,
                        child: Container(
                          width: 47.77,
                          height: 73.36,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 735,
                child: Container(
                  width: 41.80,
                  height: 40.83,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 41.80,
                          height: 40.83,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/cart.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: -120.54,
                        child: Container(
                          width: 340.88,
                          height: 412.18,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 259.17,
                top: 735,
                child: Container(
                  width: 40.83,
                  height: 40.83,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 40.83,
                          height: 40.83,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/user.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -8.61,
                        top: -4.70,
                        child: Container(
                          width: 57.73,
                          height: 63.72,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

          )
    );
  }
}
