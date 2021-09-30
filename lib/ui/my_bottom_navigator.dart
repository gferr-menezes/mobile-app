import 'package:flutter/material.dart';

class MyBottonNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.green.shade800,
      onTap: (index) {
        // print(index);
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            //size: 20,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.motorcycle_outlined,
            // size: 35,
          ),
          label: '',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat_outlined,
            // size: 35,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.connect_without_contact,
            //  size: 35,
            color: Colors.red,
          ),
          label: '',
          tooltip: 'Panico',
        ),
      ],
    );
  }
}
