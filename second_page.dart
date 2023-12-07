import 'package:flutter/material.dart';
import 'first_page.dart';
import 'mannahno_page.dart';
class secondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحة تسجيل الدخول'),
      ),
      body: Container(
        width: 360,
        height: 800,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: -85,
              top: -138,
              child: Container(
                width: 530,
                height: 1155,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
            Positioned(
              left: -14,
              top: -235,
              child: Container(
                width: 402,
                height: 1111,
                child: Stack(
                  children: [
                    Positioned(
                      left: 286,
                      top: 303,
                      child: Container(
                        width: 88,
                        height: 172,
                        decoration: BoxDecoration(color: Color(0xFF156260)),
                      ),
                    ),
                    Positioned(
                      left: 14,
                      top: 0,
                      child: Container(
                        width: 388,
                        height: 388,
                        decoration: ShapeDecoration(
                          color: Color(0xFF156260),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(111),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 388,
                      child: Container(
                        width: 388,
                        height: 723,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(111),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 99,
                      top: 290,
                      child: Text(
                        'Invisible Chef',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 33,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 68,
                      top: 523,
                      child: SizedBox(
                        width: 224,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'اسم المستخدم',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 68,
                      top: 595,
                      child: SizedBox(
                        width: 224,
                        height: 40,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'كلمة المرور',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 110,
                      top: 695,
                      child: ElevatedButton(
                        onPressed: () {
                          // أضف هنا الإجراء الذي ترغب في تنفيذه عند الضغط على الزر
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF156260), // لون الخلفية
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // شكل الحواف
                          ),
                        ),
                        child: Text(
                          'تــسـجــيــل',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 142,
                      top: 642,
                      child: InkWell(
                        onTap: () {
                          // استخدم Navigator للانتقال إلى صفحة التسجيل الثانية
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FirstPage()),
                          );
                        },
                        child: SizedBox(
                          width: 58,
                          height: 13,
                          child: Text(
                            'اضغط هنا',
                            style: TextStyle(
                              color: Color(0xFF156260),
                              fontSize: 12,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 197,
                      top: 642,
                      child: SizedBox(
                        width: 132,
                        height: 16,
                        child: Text(
                          'هل نسيت كلمة المرور ؟',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 110,
                      top: 760,
                      child: SizedBox(
                        width: 250,
                        height: 30,
                        child: Text(
                          'ليس لديك حساب؟ '
                              ' تــسجـيـل مـستخــدم جـديـد',
                          style: TextStyle(
                            color: Color(0xFF156260),
                            fontSize: 14,
                            fontFamily: 'Tajawal',
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
        Positioned(
            left: 128,
            top: 570,
          child: GestureDetector(
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => mannahnopage()),
              );
            },

              child: Text(
                'مــــن نـــحــن',
                style: TextStyle(
                  color: Color(0xFF156260),
                  fontSize: 24,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
          )
            ),
            Positioned(
              left: 100,
              top: 200,
              child: Text(
                'تسجيل دخول',
                style: TextStyle(
                  color: Color(0xFF156260),
                  fontSize: 27,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
