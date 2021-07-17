import 'package:flutter/material.dart';
import 'package:wikidominicana_app/components/export_componets.dart';

import 'constant/theme/wd_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: wdTheme(),
      //title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Wiki Dominicana',
            style: TextStyle(color: Colors.black),
          ),
          //backgroundColor: Colors.white,
        ),
        drawer: WDDrawer(),
        body: Center(
          child: Container(
            child: Text('Dictionary Wiki dominicana'),
          ),
        ),
        bottomNavigationBar: WDNavBar(),
      ),
    );
  }
}
