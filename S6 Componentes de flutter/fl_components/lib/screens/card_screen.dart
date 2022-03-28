import 'package:flutter/material.dart';

import '../widgets/widget_card_type_1.dart';
import '../widgets/widget_card_type_2.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
        children: const [
          WidgetCardType1(),
          SizedBox(height: 20,),
          WidgetCardType2(
            url: 'https://i.blogs.es/0ca5da/ambulo_polar_wide/450_1000.jpg',
            name: 'Arbol',
          ),
          SizedBox(height: 20,),
          WidgetCardType2(
            url: 'https://autoridadandroid.com/wp-content/uploads/2021/09/Wallpaper-Engine-Steam-App.jpg',
          ),
          SizedBox(height: 20,),
          WidgetCardType2(
            url: 'https://images6.alphacoders.com/121/thumb-350-1217194.png',
          ),
          // SizedBox(height: 20,),
          // WidgetCardType2(),
          // SizedBox(height: 20,),
          // WidgetCardType2(),
          // SizedBox(height: 20,),
          // WidgetCardType2(),
          // SizedBox(height: 100,),

        ],
      ),
    );
  }
}
