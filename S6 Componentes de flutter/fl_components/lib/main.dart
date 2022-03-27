import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Map<String, Widget Function(BuildContext)> routes = {
    'alert_screen':(BuildContext context)=> const AlertScreen(),
    'card_screen':(BuildContext context)=> const CardScreen(),
    'home_screen':(BuildContext context)=> const HomeScreen(),
    'listview1_screen':(BuildContext context)=> const ListView1Screen(),
    'listview2_screen':(BuildContext context)=> const ListView2Screen()
  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: routes,
    );
  }
}