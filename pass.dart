import 'package:flutter/material.dart';
import 'newuser_page.dart';
import 'otp.dart';
import 'second_page.dart';
import 'profile.dart';
import 'favourite.dart';
class pass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('هل نسيت كلمة المرور'),
      ),
      body: Stack(
        children: [
          // Background image
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
          // App title
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
          // Forgot password title
          Positioned(
            left: 70,
            top: 180,
            child: Text(
              'هل نسيت كلمة المرور؟',
              style: TextStyle(
                color: Color(0xFF156260),
                fontSize: 27,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w300,
                height: 0,
              ),
            ),
          ),
          // Instructions text
          Positioned(
            left: 1,
            top: 250,
            child: SizedBox(
              width: 280,
              height: 40,
              child: Text(
                'قم بإدخال بريدك الإلكتروني',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF505050),
                  fontSize: 18,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
              ),
            ),
          ),
          Positioned(
            left: -14,
            top: 270,
            child: SizedBox(
              width: 290,
              height: 40,
              child: Text(
                'وسنقوم بإرسال رسالة تحقق',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF505050),
                  fontSize: 18,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
              ),
            ),
          ),
          // Email input field
          Positioned(
            left: 40,
            top: 300,
            child: SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'ادخل بريدك الإلكتروني',
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
          ),
          // Send OTP link
          Positioned(
            left: 240,
            top: 360,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => otp()),
                    );
                  },
                  child: Text(
                    'ارسل رسالة إلى هاتفي',
                    style: TextStyle(
                      color: Color(0xFF156260),
                      fontSize: 12,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Divider with "or"
          Positioned(
            left: 40,
            top: 430,
            child: SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'أو',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // New user registration link
          Positioned(
            left: 100,
            top: 500,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => newuserPage()),
                );
              },
              child: Text(
                ' تسجيل مستخدم جديد',
                style: TextStyle(
                  color: Color(0xFF156260),
                  fontSize: 22,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
