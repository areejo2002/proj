import 'package:flutter/material.dart';
import 'redsause.dart';
import 'second_page.dart';
import 'profile.dart';

class favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<favourite> {
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
                  // Add more recipe tiles here if needed
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
      padding: EdgeInsets.all(16.0), // Increased padding for more space
      decoration: BoxDecoration(
        color: Color(0xFFE1EDED),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xFF156260),
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
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            recipeName,
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF156260),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: Text(
          'الوقت المستغرق: $preparationTime',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF156260),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
