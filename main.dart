import 'package:flutter/material.dart';
import 'first_page.dart'; // or the correct import for your FirstPage file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'invisible chef',
      home: FirstPage(), // or the initial page you want to show
    );
  }
}

