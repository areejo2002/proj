import 'package:flutter/material.dart';

class otp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('رسالة التحقق'),
      ),
      body: Stack(
        children: [
          Container(
            width: 530,
            height: 900,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/screen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 100,
            top: 20,
            child: Text(
              'Invisible Chef',
              style: TextStyle(
                color: Colors.white,
                fontSize: 33,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 180,
            child: Text(
              'قم بإدخال الرمز الذي أرسل لك',
              style: TextStyle(
                color: Color(0xFF156260),
                fontSize: 27,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w300,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 250,
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: '',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 70,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: '',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 70,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: '',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 70,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: '',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 230,
            top: 295,
            child: Text(
              'أرسل الرمز مرة أخرى',
              style: TextStyle(
                color: Color(0xFF156260),
                fontSize: 14,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w300 ,
                decoration: TextDecoration.underline,

                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 95,
            top: 380,
            child: ElevatedButton(
              onPressed: () {
                // يمكنك إضافة الإجراء المطلوب هنا
              },
              child: Container(
                width: 150, // تعيين عرض الزر إلى 200 وحدة
                child: Center(
                  child: Text(
                    'تحقق',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Tajawal',
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF156260),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Color(0xFF156260)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
