import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes{
  static const String initialRoute = 'home_screen';
  static final Map<String, Widget Function(BuildContext)> routes = {
    'alert_screen':(BuildContext context)=> const AlertScreen(),
    'card_screen':(BuildContext context)=> const CardScreen(),
    'home_screen':(BuildContext context)=> const HomeScreen(),
    'listview1_screen':(BuildContext context)=> const ListView1Screen(),
    'listview2_screen':(BuildContext context)=> const ListView2Screen()
  };
  //Route<dynamic>? Function(RouteSettings
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings)=>MaterialPageRoute(
    builder: (context)=>const AlertScreen()
  );
}