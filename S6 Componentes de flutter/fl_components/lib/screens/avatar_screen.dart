import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Screen'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: CircleAvatar(
              backgroundColor: Colors.lightGreen[900],
              child:const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           radius: 120,
           backgroundImage: NetworkImage('https://i.blogs.es/85aa44/stan-lee/1366_2000.jpg'),
         )
      ),
    );
  }
}