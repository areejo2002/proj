import 'package:flutter/material.dart';
import 'mannahno_page.dart';
import 'newuser_page.dart';
import 'food_types.dart';
import 'first_page.dart';
import 'ingredients.dart';
import 'pass.dart';
import 'newpass.dart';
import 'profile.dart';
import 'favourite.dart';
import 'food_types.dart'; // Import the types.dart page

class secondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<secondPage> {
  bool _showPassword = false;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

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
                        width: 250,
                        height: 50,
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
                      top: 600,
                      child: SizedBox(
                        width: 250,
                        height: 50,
                        child: TextField(
                          controller: _passwordController,
                          obscureText: !_showPassword, // استخدام قيمة معكوسة لعرض/إخفاء كلمة المرور
                          decoration: InputDecoration(
                            labelText: 'كلمة المرور',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            // إضافة زر لتبديل رؤية كلمة المرور
                            suffixIcon: IconButton(
                              icon: Icon(
                                _showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                // تبديل قيمة المتغير لعرض/إخفاء كلمة المرور
                                setState(() {
                                  _showPassword = !_showPassword;
                                });
                              },
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => foodtypes()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF156260), // لون الخلفية
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // شكل الحواف
                          ),
                          elevation: 8, // ارتفاع الظل
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
                      left: 50,
                      top: 660,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => foodtypes()),
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
                      left: 100,
                      top: 660,
                      child: InkWell(
                        onTap: () {
                          // Navigate to pass.dart when the text is tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => pass()),
                          );
                        },
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
                    ),
                    Positioned(
                      left: 110,
                      top: 760,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => newuserPage()),
                          );
                        },
                        child: Text(
                          'ليس لديك حساب؟ تــسجـيـل مـستخــدم جـديـد',
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
              ),
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
