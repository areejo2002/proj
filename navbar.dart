// custom_navigation_bar.dart
import 'package:flutter/material.dart';
import 'package:grad_proj/second_page.dart';
import 'profile.dart';
import 'favourite.dart';

class CustomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  CustomNavigationBar({required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: const NavigationBarThemeData(
        indicatorColor: Colors.white,
        surfaceTintColor: Colors.yellow,
      ),
      child: NavigationBar(
        height: 60,
        backgroundColor: const Color(0xFF156260),
        selectedIndex: selectedIndex,
        onDestinationSelected: (int index) {
          onItemTapped(index);
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            label: "Favorite",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
