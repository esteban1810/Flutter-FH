

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class WidgetCardType2 extends StatelessWidget {
  final String url;
  final String? name;
  
  const WidgetCardType2({
    Key? key, 
    required this.url, 
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      shadowColor: AppTheme.primaryLigthColor.withOpacity(.4),
      elevation: 30,
      child: Column(
        children: [
           FadeInImage(
            image: NetworkImage(url),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            height: 180,
            width: double.infinity, //Obligamos a que la imagen tenga 100% del contenido
            fit: BoxFit.cover, //La imagen ajusta su width o heigth para ocupar el 100% del contenedor
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if(name!=null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20,top: 15,bottom: 15),
              child: Text(name!)//Es para permitir que una variable tenga valor en el tiempo de ejecucion
            )
        ],
      ),

    );
  }
}
