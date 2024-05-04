import 'package:flutter/material.dart';
import 'newuser_page.dart';
import 'otp.dart'; // استيراد صفحة otp.dart

class pass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('هل نسيت كلمة المرور'),
      ),
      body: Form(
        key: _formKey, // تحديد مفتاح للنموذج
        child: Stack(
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
            Positioned(
              left: 40,
              top: 300,
              child: SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'name@gmail.com',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Tajawal',
                  ),
                  validator: _validateEmail, // التحقق من صحة البريد الإلكتروني
                ),
              ),
            ),
            Positioned(
              left: 240,
              top: 360,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // التحقق من صحة النموذج قبل الانتقال إلى الصفحة التالية
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => otp()),
                        );
                      }
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
      ),
    );
  }
}

// تحديد مفتاح للنموذج
final _formKey = GlobalKey<FormState>();

// دالة للتحقق من صحة البريد الإلكتروني
String? _validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'يجب إدخال البريد الإلكتروني';
  } else if (!value.contains('@') || !value.contains('.')) {
    return 'الرجاء إدخال بريد إلكتروني صحيح';
  }
  return null;
}

