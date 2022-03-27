import 'package:flutter/material.dart';

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
          Card(
            child: ListTile(
              leading: Icon(Icons.book_outlined),
              title: Text('Soy un titulo'),
              subtitle: Text('Exercitation incididunt aliqua cillum sit nostrud Lorem mollit.Non consequat et irure culpa proident.'),
            ),
          )
        ],
      ),
    );
  }
}