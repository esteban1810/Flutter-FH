import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



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
            children: const [
              CustomTextField1(
                hintText: 'Escribe tu nombre', 
                labelText: 'Nombre Completo', 
                helperText: 'Sólo ingresa letras', 
                icon: Icon(Icons.person), 
                suffixIcon: Icon(Icons.person_pin_outlined))
        ]),
         ),
      ),
    );
  }
}

