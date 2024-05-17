import 'package:flutter/material.dart';
import 'redsause.dart';

class favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/down.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  buildRecipeTile(
                    context,
                    'معكرونة بالصلصة الحمراء',
                    'assets/m.jpg',
                    '20 دقيقة',
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => redsauce()),
                      );
                    },
                  ),
                  SizedBox(height: 16),
                  // أضف المزيد من الأزرار هنا إذا لزم الأمر
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRecipeTile(
      BuildContext context,
      String recipeName,
      String imagePath,
      String preparationTime,
      VoidCallback onPressed,
      ) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0xFFE1EDED), // لون أفتح من لون الإطار
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xFF156260), // اللون المحدد لإطار المستطيل
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        onTap: onPressed,
        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        leading: Image.asset(imagePath, width: 50, height: 50, fit: BoxFit.cover), // الصورة على الجانب الأيسر
        title: Text(
          recipeName,
          style: TextStyle(fontSize: 18, color: Color(0xFF156260), fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'الوقت المستغرق: $preparationTime',
          style: TextStyle(fontSize: 12, color: Color(0xFF156260), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
