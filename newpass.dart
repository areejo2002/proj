import 'package:flutter/material.dart';
import 'profile.dart';
import 'second_page.dart';

class newpass extends StatefulWidget {
  @override
  _NewPassState createState() => _NewPassState();
}

class _NewPassState extends State<newpass> {
  bool _showPassword = false;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('كلمه المرور الجديده'),
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
                      left: 70,
                      top: 430,
                      child: Text(
                        'تعيين كلمه مرور جديدة',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w300,
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
                            labelText: 'كلمة المرور الجديدة',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _showPassword = !_showPassword;
                                });
                              },
                            ),
                          ),
                          controller: _passwordController,
                          obscureText: !_showPassword,
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
                          decoration: InputDecoration(
                            labelText: 'تأكيد كلمة المرور الجديدة',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _showPassword = !_showPassword;
                                });
                              },
                            ),
                          ),
                          controller: _confirmPasswordController,
                          obscureText: !_showPassword,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 95,
                      top: 700,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => newpass()),
                          ); // يمكنك إضافة الإجراء المطلوب هنا
                        },
                        child: Container(
                          width: 150, // تعيين عرض الزر إلى 200 وحدة
                          child: Center(
                            child: Text(
                              'حفظ',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
