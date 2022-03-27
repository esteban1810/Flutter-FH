import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('HomeScreen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => const ListTile(
          title: Text('Ya es hora'),
          leading:  Icon(Icons.timer_outlined),
          trailing: Icon(Icons.arrow_forward_ios),
        ), 
        separatorBuilder: (_,__)=>const Divider(),
        itemCount: 1000
      )
    );
  }
}