import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 20,
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 209, 205, 205),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color.fromARGB(255, 209, 205, 205),
        unselectedLabelStyle:
            TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_sharp,
              color: Color.fromARGB(255, 209, 205, 205),
            ),
            label: 'NEW TRIP',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              color: Color.fromARGB(255, 209, 205, 205),
            ),
            label: 'MY TRIPS',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_alert,
              color: Color.fromARGB(255, 209, 205, 205),
            ),
            label: 'ALERTS',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 209, 205, 205),
            ),
            label: 'ACCOUNT',
          )
        ]);
  }
}
