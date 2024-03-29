import 'package:flutter/material.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey,
);

var myDrawer = const Drawer(
  child: Column(
    children: [
      DrawerHeader(
        child: Icon(Icons.heat_pump_sharp),
      ),
      ListTile(
        leading: Icon(Icons.dashboard),
        title: Text('D A S H B O A R D'),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text('M E S S A G E'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('S E T T I N G S'),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('L O G O U T'),
      ),
    ],
  ),
);
