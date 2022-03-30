import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Inputs Screen')),
      ),
      body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
           child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: 'Pedro ',
                textCapitalization: TextCapitalization.words,
                onChanged: (text){print('Texto $text');},
              )
        ]),
         ),
      ),
    );
  }
}