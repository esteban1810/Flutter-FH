

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class WidgetCardType2 extends StatelessWidget {
  const WidgetCardType2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      shadowColor: AppTheme.primaryLigthColor.withOpacity(.4),
      elevation: 30,
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage('https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            height: 180,
            width: double.infinity, //Obligamos a que la imagen tenga 100% del contenido
            fit: BoxFit.cover, //La imagen ajusta su width o heigth para ocupar el 100% del contenedor
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20,top: 15,bottom: 15),
            child: const Text('Flutter es muy bueno')
          )
        ],
      ),

    );
  }
}
