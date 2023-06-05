import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigationRoute extends StatefulWidget {
  const NavigationRoute({super.key});

  @override
  State<NavigationRoute> createState() => _NavigationRouteState();
}

class _NavigationRouteState extends State<NavigationRoute> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: DotNavigationBar(
        enableFloatingNavBar: true,
        enablePaddingAnimation: true,
        itemPadding: const EdgeInsets.all(4),
        marginR: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        currentIndex: _currentIndex,
        backgroundColor: const Color(0xffF69C25),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // dotIndicatorColor: Colors.black,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: const Icon(
              Icons.home,
              size: 25,
            ),
            selectedColor: Colors.purple,
          ),

          /// Likes
          DotNavigationBarItem(
            icon: const Icon(
              Icons.favorite_border,
              size: 25,
            ),
            selectedColor: Colors.pink,
          ),

          /// Search
          DotNavigationBarItem(
            icon: const Icon(
              Icons.search,
              size: 25,
            ),
            selectedColor: Colors.orange,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: const Icon(
              Icons.person,
              size: 25,
            ),
            selectedColor: Colors.teal,
          ),
        ],
      ),
      body: Image.asset("assets/images/logo.png"),
    );
  }
}


