import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final List options = const ['mario bros','pacman','Snow Bros'];
  const ListView2Screen({Key? key}) : 
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("ListView Tipo 2")
        ),
      ),
      body:ListView.separated(
        itemBuilder: (context, index)=> ListTile(
          leading: const Icon(Icons.airline_seat_legroom_reduced_outlined),
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios),
        ), 
        separatorBuilder:(context, index) => const Divider(), 
        itemCount: options.length
      )
    );
  }
}