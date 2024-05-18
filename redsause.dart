import 'package:flutter/material.dart';
import 'recipepage.dart';
import 'navbar.dart';
import 'second_page.dart';
import 'profile.dart';
import 'favourite.dart';

class redsauce extends StatefulWidget {
  @override
  _RedsauceState createState() => _RedsauceState();
}

class _RedsauceState extends State<redsauce> {
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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    ':وصفة معكرونة بالصلصة الحمراء ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Image.asset(
                  'assets/مكرونه.jpeg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    ': المكونات ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '200 غرام معكرونة\n'
                      '2 ملعقة كبيرة زيت الزيتون\n'
                      '3 فصوص الثوم\n'
                      '1 كوب صوص المعكرونة\n'
                      '1 ملعقة صغيرة إكليل الجبل\n'
                      '2 ملعقة صغيرة ريحان\n'
                      '1/2 ملعقة صغيرة هيل\n'
                      'ملح حسب الذوق\n'
                      'فلفل أسود حسب الذوق',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    height: 1.5, // Adjust line height for readability
                  ),
                  textAlign: TextAlign.right, // Align text to the right
                ),
                SizedBox(height: 16),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'طريقة التحضير :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    '1. أسلقي المعكرونة في ماء مملح وفقًا لتعليمات العبوة، ثم صفّيها واتركيها جانباً.\n'
                        '2. في قدر على حرارة متوسطة، سخّني الزيت وقلّبي فيه الثوم حتى يتغير لونه.\n'
                        '3. أضيفي صلصة الطماطم ونكّهي بالملح، الفلفل الأسود، إكليل الجبل، الريحان والهيل.\n'
                        '4. قلّبي المزيج حتى يغلي.\n'
                        '5. أضيفي المكرونة وقلّبي من جديد حتى تتداخل المكونات.\n'
                        '6. قدّمي الطبق مباشرةً على سفرتك.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 32), // Space at the end of the page
              ],
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
