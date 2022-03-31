import 'package:flutter/material.dart';

class CustomTextField1 extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final Icon? icon;
  final Icon? suffixIcon;

  const CustomTextField1({
    Key? key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (text){},
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
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        icon: icon,
        suffixIcon: suffixIcon

      ),
    );
  }
}