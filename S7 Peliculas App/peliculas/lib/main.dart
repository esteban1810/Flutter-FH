import 'package:flutter/material.dart';
import 'package:peliculas/screens/details_screen.dart';
import 'package:peliculas/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: '/home',
      routes: {
        '/home':(_)=>const HomeScreen(),
        '/details':(_)=>const DetailsScreen()
      },
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.deepOrange,
          elevation: 0
        )
      ),
    );
  }
}