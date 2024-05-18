import 'package:flutter/material.dart';
import 'redsause.dart';
import 'navbar.dart';
import 'second_page.dart';
import 'profile.dart';
import 'favourite.dart';

class recipepage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<recipepage> {
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
        title: Text('المفضلة'),
      ),
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
                  // Add more recipes here if needed
                ],
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

  Widget buildRecipeTile(
      BuildContext context,
      String recipeName,
      String imagePath,
      String preparationTime,
      VoidCallback onPressed,
      ) {
    bool isFavourite = false;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Color(0xFFE1EDED), // Lighter color than border color
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Color(0xFF156260), // Border color
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
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          leading: Image.asset(
            imagePath,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ), // Image on the left side
          title: Text(
            recipeName,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF156260),
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'الوقت المستغرق: $preparationTime',
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF156260),
              fontWeight: FontWeight.bold,
            ),
          ),
    trailing: IconButton(
    icon: Icon(
    isFavourite ? Icons.favorite : Icons.favorite_border,
    color: isFavourite ? Colors.red : Colors.grey,
    ),
    onPressed: () {
    setState(() {
    isFavourite = !isFavourite; // Toggle isFavourite
    // Change color to red if the button is pressed
    if (isFavourite) {
    Colors.red;
    }
    });
    },
    ),
    ),
    ),
    );
  }
}
