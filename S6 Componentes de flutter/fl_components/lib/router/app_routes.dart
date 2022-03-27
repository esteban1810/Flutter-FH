import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes{
  static const String initialRoute = 'home_screen';

  static List<MenuOption> menuOptions = [
    //TODO: BORRAR HOME
    MenuOption(view: const AlertScreen(), name: "Alert Screen", icon: const Icon(Icons.add_alert,color: AppTheme.primaryLigthColor,), route: 'alert_screen'),
    MenuOption(view: const CardScreen(), name: "Card Screen", icon: const Icon(Icons.card_giftcard,color: AppTheme.primaryLigthColor), route: 'card_screen'),
    MenuOption(view: const HomeScreen(), name: "Home Screen", icon: const Icon(Icons.home,color: AppTheme.primaryLigthColor), route: 'home_screen'),
    MenuOption(view: const ListView1Screen(), name: "ListView1 Screen", icon: const Icon(Icons.view_list_outlined,color: AppTheme.primaryLigthColor), route: 'listview1_screen'),
    MenuOption(view: const ListView2Screen(), name: "ListView2 Screen", icon: const Icon(Icons.format_line_spacing_outlined,color: AppTheme.primaryLigthColor), route: 'listview2_screen'),

  ];

  static Map<String, Widget Function(BuildContext)> getRoutes(){
    Map<String, Widget Function(BuildContext)> routes = {};
    

    for (int i = 0; i < menuOptions.length; i++) {
      routes.addAll({menuOptions[i].route:(BuildContext context)=>menuOptions[i].view});
    }
    
    return routes;

    // 'alert_screen':(BuildContext context)=> const AlertScreen(),
    // 'card_screen':(BuildContext context)=> const CardScreen(),
    // 'home_screen':(BuildContext context)=> const HomeScreen(),
    // 'listview1_screen':(BuildContext context)=> const ListView1Screen(),
    // 'listview2_screen':(BuildContext context)=> const ListView2Screen()
  }
  //Route<dynamic>? Function(RouteSettings
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings)=>MaterialPageRoute(
    builder: (context)=>const AlertScreen()
  );
}