import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'newpass.dart';
import 'second_page.dart';
import 'profile.dart';
import 'favourite.dart';
import 'navbar.dart';

class otp extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<otp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => favourite(),
          ),
        );
      } else if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => profile(),
          ),
        );
      } else if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => secondPage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('رسالة التحقق'),
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
          // Verification code label
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
          // OTP input fields
          Positioned(
            left: 30,
            top: 250,
            child: Row(
              children: [
                for (int i = 0; i < 4; i++)
                  Container(
                    width: 70,
                    height: 40,
                    margin: EdgeInsets.only(right: 10), // Add margin between input fields
                    child: TextField(
                      textAlign: TextAlign.center, // Center align the text
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1), // Allow only one digit per box
                      ],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: '',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Tajawal',
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
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
          // Resend code option
          Positioned(
            left: 230,
            top: 295,
            child: Text(
              'أرسل الرمز مرة أخرى',
              style: TextStyle(
                color: Color(0xFF156260),
                fontSize: 14,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.underline,
                height: 0,
              ),
            ),
          ),
          // Verify button
          Positioned(
            left: 95,
            top: 380,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => newpass()),
                );
              },
              child: Container(
                width: 150,
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
      bottomNavigationBar: CustomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
