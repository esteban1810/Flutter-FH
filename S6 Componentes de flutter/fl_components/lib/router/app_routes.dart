import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes{
  static const String initialRoute = 'home_screen';

  static List<MenuOption> menuOptions = [
    MenuOption(view: const AlertScreen(), name: "Alert Screen", icon: const Icon(Icons.add_alert,color: AppTheme.primaryLigthColor,), route: 'alert_screen'),
    MenuOption(view: const AvatarScreen(), name: "Avatar Screen", icon: const Icon(Icons.supervisor_account_sharp,color: AppTheme.primaryLigthColor,), route: 'avatar_screen'),
    MenuOption(view: const CardScreen(), name: "Card Screen", icon: const Icon(Icons.card_giftcard,color: AppTheme.primaryLigthColor), route: 'card_screen'),
    MenuOption(view: const ListView1Screen(), name: "ListView1 Screen", icon: const Icon(Icons.view_list_outlined,color: AppTheme.primaryLigthColor), route: 'listview1_screen'),
    MenuOption(view: const ListView2Screen(), name: "ListView2 Screen", icon: const Icon(Icons.format_line_spacing_outlined,color: AppTheme.primaryLigthColor), route: 'listview2_screen'),
    MenuOption(view: const AnimatedScreen(), name: "Animated Screen", icon: const Icon(Icons.play_circle_fill,color: AppTheme.primaryLigthColor), route: 'play_screen'),
    MenuOption(view: const InputsScreen(), name: "Inputs Screen", icon: const Icon(Icons.insert_photo_outlined,color: AppTheme.primaryLigthColor), route: 'inputs_screen'),

  ];

  static Map<String, Widget Function(BuildContext)> getRoutes(){
    Map<String, Widget Function(BuildContext)> routes = {};
    

    for (int i = 0; i < menuOptions.length; i++) {
      routes.addAll({menuOptions[i].route:(BuildContext context)=>menuOptions[i].view});
    }

    routes.addAll(
      {
        'home_screen':(BuildContext context)=>const HomeScreen()
      }
    );

    return routes;
  }
  //Route<dynamic>? Function(RouteSettings
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings)=>MaterialPageRoute(
    builder: (context)=>const AlertScreen()
  );
}