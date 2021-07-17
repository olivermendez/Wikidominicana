import 'package:flutter/material.dart';

class WDNavBar extends StatefulWidget {
  const WDNavBar({Key? key}) : super(key: key);

  @override
  _WDNavBarState createState() => _WDNavBarState();
}

class _WDNavBarState extends State<WDNavBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      elevation: 20,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Palabras',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Buscar',
        )
      ],
    );
  }
}
