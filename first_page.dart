import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          child: secondPage(),
        ),
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('FIRST PAGE'),
      ),
      body: Stack(
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
            left: 79,
            top: 477,
            child: Text(
              'أهــلا وســـهـــلا',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 86,
            top: 39,
            child: Text(
              'Invisible Chef',
              style: TextStyle(
                color: Color(0xFF156260),
                fontSize: 33,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}





