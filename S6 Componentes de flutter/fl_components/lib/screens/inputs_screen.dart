import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



class InputsScreen extends StatelessWidget {

  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final Map<String,String> mapa = {
      'nombre':'',
      'apellido':'',
      'correo':'',
      'password':'',
      'role':'admin'
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
                CustomTextField1(
                  hintText: 'Escribe tu(s) nombre(s)', 
                  labelText: 'Nombre(s)', 
                  helperText: 'Sólo ingresa tu(s) nombre(s)', 
                  icon: const Icon(Icons.person), 
                  suffixIcon: const Icon(Icons.person_pin_outlined),
                  propertie: 'nombre',
                  map: mapa,),
           
                  const SizedBox(height: 30,),
           
                CustomTextField1(
                  hintText: 'Escribe tu(s) apellido(s)', 
                  labelText: 'Apellido(s)', 
                  helperText: 'Sólo ingresa letras', 
                  icon: const Icon(Icons.queue_play_next_outlined), 
                  suffixIcon: const Icon(Icons.plagiarism_rounded), 
                  map: mapa, 
                  propertie: 'apellido',),
           
                  const SizedBox(height: 30,),
           
           
                CustomTextField1(
                  hintText: 'Escribe tu correo', 
                  labelText: 'Correo', 
                  helperText: 'Ingresa un correo real', 
                  icon: const Icon(Icons.church),
                  textInputType: TextInputType.emailAddress,
                  suffixIcon: const Icon(Icons.email),
                  map: mapa,
                  propertie: 'correo',),
           
                  const SizedBox(height: 30,),
           
           
                CustomTextField1(
                  hintText: 'Escribe tu password', 
                  labelText: 'Password', 
                  // helperText: 'Ingresa ', 
                  icon: const Icon(Icons.password),
                  obscureText: true,
                  // textInputType: TextInputType.emailAddress,
                  suffixIcon: const Icon(Icons.password),
                  map: mapa,
                  propertie: 'password',),
           
                  const SizedBox(height: 30,),

                  DropdownButtonFormField<String>(
                    value: 'admin',
                    items: const [
                      DropdownMenuItem(child: Text("Admin"),value: "admin"),
                      DropdownMenuItem(child: Text("Superuser"),value: "superuser"),
                      DropdownMenuItem(child: Text("Developer"),value: "developer"),
                      DropdownMenuItem(child: Text("Jr. Developer"),value: "jr. developer"),
                    ],
                    onChanged: (value){
                      mapa['role']=value??'admin';
                    }),

                  const SizedBox(height: 30,),

           
                  ElevatedButton(onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!globalKey.currentState!.validate()){
                      return;
                    }
                    print(mapa);
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

