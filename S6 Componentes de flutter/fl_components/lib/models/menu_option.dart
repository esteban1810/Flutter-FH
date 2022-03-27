import 'package:flutter/widgets.dart' show Icon, Widget;

class MenuOption{
  final String name;
  final Icon icon;
  final String route;
  final Widget view;

  MenuOption({
    required this.view, 
    required this.name, 
    required this.icon, 
    required this.route
  });

}