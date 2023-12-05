import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:starbhak_mart_mobile/pages/home_page.dart';
import 'package:starbhak_mart_mobile/pages/input_page.dart';
import 'package:starbhak_mart_mobile/pages/profile_page.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectionIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    InputPage(),
    ProfilePage()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectionIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFFEDECF2),
        height: 70.0,
        color: Colors.lightBlueAccent,
        onTap: _onItemTap,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.input,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
