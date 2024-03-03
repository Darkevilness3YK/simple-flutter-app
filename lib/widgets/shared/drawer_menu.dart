import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final double titleSize;
  final double textSize;

  const DrawerMenu({
    super.key,
    required this.titleSize,
    required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    // Original code taken from: https://www.youtube.com/watch?v=ctibKAUH2Zs
    return Drawer(
      child: ListView(
        children: [
          Text(
            'Menu',
            style: TextStyle(fontSize: titleSize, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(fontSize: textSize),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'About',
              style: TextStyle(fontSize: textSize),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(fontSize: textSize),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
