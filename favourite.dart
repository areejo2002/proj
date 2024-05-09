import 'package:flutter/material.dart';
import 'package:grad_proj/ingredients.dart';
import 'redsause.dart';
import 'favourite.dart'; // استيراد صفحة المفضلة

class favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'), // Add an app bar title
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/down.png"),
            fit: BoxFit.cover,
          ),
        ), // This is where you define the background image for your favorites page
        // You can add more widgets here to display your favorite items
      ),
    );
  }
}
