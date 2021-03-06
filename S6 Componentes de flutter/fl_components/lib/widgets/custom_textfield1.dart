import 'package:flutter/material.dart';

class CustomTextField1 extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String propertie;
  final Map<String,String> map;
  final Icon? icon;
  final Icon? suffixIcon;
  final TextInputType? textInputType;
  final bool obscureText;

  const CustomTextField1({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.textInputType, 
    this.obscureText=false, 
    required this.propertie, 
    required this.map,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      initialValue: '',
      keyboardType: textInputType,
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      onChanged: (text){
        map[propertie] = text;
      },
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