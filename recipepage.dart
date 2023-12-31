import 'package:flutter/material.dart';
import 'package:grad_proj/ingredients.dart';

class recipepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              buildRecipeButton('معكرونة بالصلصة الحمراء', 'assets/m.jpg', '20 دقيقة', () {
                // عند النقر، قم بالانتقال إلى صفحة RedSausePage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => redsause()),
                );
              }),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRecipeButton(String recipeName, String imagePath, String preparationTime, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(16),
        alignment: Alignment.centerLeft,
        backgroundColor: Color(0xFFFBFBFB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recipeName,
                style: TextStyle(fontSize: 18, color: Color(0xFF156260), fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'الوقت المستغرق: $preparationTime',
                style: TextStyle(fontSize: 12, color: Color(0xFF156260), fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(width: 16),
          Container(
            width: 80,
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
