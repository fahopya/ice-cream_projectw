import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home_outlined,
            color: Colors.pink,
            size: 30,
          ),
          Icon(
            Icons.favorite_outline,
            color: Color.fromARGB(255, 66, 66, 66),
            size: 30,
          ),
          Icon(
            Icons.notifications_outlined,
            color: Color.fromARGB(255, 66, 66, 66),
            size: 30,
          ),
          Icon(
            Icons.person_outline,
            color: Color.fromARGB(255, 66, 66, 66),
            size:30,
          )
        ],
      ),
    );
  }
}
