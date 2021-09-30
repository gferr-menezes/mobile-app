import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          ListTile(
              title: const Text('Meus Dados'),
              onTap: () {
                Navigator.of(context).pop();

                Get.toNamed('/profile');
                // profile page
              }),
          ListTile(
            title: const Text('Sair do Sistema'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Sobre'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
