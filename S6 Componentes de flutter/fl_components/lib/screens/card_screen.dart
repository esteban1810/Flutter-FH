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
          WidgetCardType2(),
          SizedBox(height: 20,),
          WidgetCardType2(),
          SizedBox(height: 20,),
          WidgetCardType2(),
          SizedBox(height: 20,),
          WidgetCardType2(),
          SizedBox(height: 20,),
          WidgetCardType2(),
          SizedBox(height: 20,),
          WidgetCardType2(),
          SizedBox(height: 100,),

        ],
      ),
    );
  }
}
