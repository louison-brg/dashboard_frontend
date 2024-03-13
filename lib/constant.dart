import 'package:flutter/material.dart';

var myDefaultBackground = const Color(0xFF1F1E1E);

var myAppBar = AppBar(
  leading : Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.menu),
        color: const Color(0xFFFFFFFF),
        onPressed: () { Scaffold.of(context).openDrawer(); },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
  backgroundColor: Color(0xFF333232),
);

var myDrawer = Drawer(
  backgroundColor: const Color(0xFF333232),
  child: Column(
    children: [
      DrawerHeader(
        decoration: const BoxDecoration(
          color: Color(0xFF333232),
        ),
        child: Image.asset(
          "lib/util/tete.png",
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
      const ListTile(
        selectedColor: Color(0xFF660000),
        hoverColor: Color(0xFF660000),
        textColor: Color(0xFFFF0000),
        iconColor: Color(0xFFFF0000),
        leading: Icon(Icons.home),
        title: Text('D A S H B O A R D'),
      ),
      const ListTile(
        selectedColor: Color(0xFF660000),
        hoverColor: Color(0xFF660000),
        textColor: Color(0xFFFF0000),
        iconColor: Color(0xFFFF0000),
        leading: Icon(Icons.photo_camera_outlined),
        title: Text('I N S T A G R A M'),
      ),
      const ListTile(
        selectedColor: Color(0xFF660000),
        hoverColor: Color(0xFF660000),
        textColor: Color(0xFFFF0000),
        iconColor: Color(0xFFFF0000),
        leading: Icon(Icons.play_arrow_rounded),
        title: Text('Y O U T U B E'),
      ),
    ],
  ),
);