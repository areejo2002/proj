import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          child: secondPage(),
        ),
      );
    });

    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Stack(
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
                left: -85,
                top: -204,
                child: Container(
                  width: 530,
                  height: 1208,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 85,
                        top: 524,
                        child: Container(
                          width: 65,
                          height: 272,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        left: 85,
                        top: 0,
                        child: Container(
                          width: 360,
                          height: 604,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(135),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 464,
                        child: Container(
                          width: 301,
                          height: 164,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        left: 150,
                        top: 250,
                        child: Container(
                          width: 250,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white, // Light green background behind the picture
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("assets/capture66.jpg"),
                        ),
                      ),
                      Positioned(
                        left: 85,
                        top: 604,
                        child: Container(
                          width: 445,
                          height: 604,
                          decoration: ShapeDecoration(
                            color: Color(0xFF156260),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(135),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 110,
                top: 477,
                child: Text(
                  'welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: 'Vintage',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),


            ],
          );
        },
      ),
    );
  }
}










