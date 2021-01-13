import 'package:flutter/material.dart';

import './HomeScreen.dart';
import './MenuScreen.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => new _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MenuScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
  
}