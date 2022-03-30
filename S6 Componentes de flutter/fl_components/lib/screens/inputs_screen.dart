import 'package:fl_components/theme/app_theme.dart';
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
                // autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (text){print('Texto $text');},
                validator: (text){
                  if(text==null){
                    return 'Campo vacío';
                  }
                  if(text.isEmpty){
                    return 'Campo vacío';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction, // Cuando el usuario empieze a escribir
                decoration: const InputDecoration(
                  hintText: 'Escribe tu nombre',
                  labelText: 'Nombre Completo',
                  helperText: 'Sólo letras',
                  counterText: 'min: 3',
                  icon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.person_add_alt_outlined),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppTheme.primaryLigthColor
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppTheme.primaryLigthColor
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20)
                    )
                  )
                ),
              )
        ]),
         ),
      ),
    );
  }
}