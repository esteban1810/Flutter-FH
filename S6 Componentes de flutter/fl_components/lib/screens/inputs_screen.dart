import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



class InputsScreen extends StatelessWidget {

  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final Map<String,String> mapa = {
      'nombre':'Pedro Sevilla'
    };

    final GlobalKey<FormState> globalKey = GlobalKey<FormState>();


    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Inputs Screen')),
      ),
      body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
           child: Form(
             key: globalKey,
             child: Column(
              children: [
                const CustomTextField1(
                  hintText: 'Escribe tu(s) nombre(s)', 
                  labelText: 'Nombre(s)', 
                  helperText: 'Sólo ingresa tu(s) nombre(s)', 
                  icon: Icon(Icons.person), 
                  suffixIcon: Icon(Icons.person_pin_outlined)),
           
                  const SizedBox(height: 30,),
           
                const CustomTextField1(
                  hintText: 'Escribe tu(s) apellido(s)', 
                  labelText: 'Apellido(s)', 
                  helperText: 'Sólo ingresa letras', 
                  icon: Icon(Icons.queue_play_next_outlined), 
                  suffixIcon: Icon(Icons.plagiarism_rounded)),
           
                  const SizedBox(height: 30,),
           
           
                const CustomTextField1(
                  hintText: 'Escribe tu correo', 
                  labelText: 'Correo', 
                  helperText: 'Ingresa un correo real', 
                  icon: Icon(Icons.church),
                  textInputType: TextInputType.emailAddress,
                  suffixIcon: Icon(Icons.email)),
           
                  const SizedBox(height: 30,),
           
           
                const CustomTextField1(
                  hintText: 'Escribe tu password', 
                  labelText: 'Password', 
                  // helperText: 'Ingresa ', 
                  icon: Icon(Icons.password),
                  obscureText: true,
                  // textInputType: TextInputType.emailAddress,
                  suffixIcon: Icon(Icons.password)),
           
                  const SizedBox(height: 30,),
           
                  ElevatedButton(onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!globalKey.currentState!.validate()){
                      return;
                    }
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: SizedBox(
                      child: Center(child: Text('Enviar'),),
                    ),
                  ))
           
                   ]),
           ),
         ),
      ),
    );
  }
}

