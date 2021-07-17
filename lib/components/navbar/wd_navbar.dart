import 'package:flutter/material.dart';
import 'package:wikidominicana_app/constant/theme/wd_theme.dart';

class WDNavBar extends StatefulWidget {
  const WDNavBar({Key? key}) : super(key: key);

  @override
  _WDNavBarState createState() => _WDNavBarState();
}

class _WDNavBarState extends State<WDNavBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Text('Palabras screen'),
    Text('Buscar Screen')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: wdTheme(),
      home: Scaffold(
        body: Center(child: _widgetOptions[_selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,

          //elevation: 20,
          //backgroundColor: Colors.white,
          //selectedItemColor: Colors.black,
          //unselectedItemColor: Colors.grey,
          //selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
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
        ),
      ),
    );
  }
}
