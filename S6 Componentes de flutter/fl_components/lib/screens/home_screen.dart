import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          title:Text(AppRoutes.menuOptions[index].name),
          leading: AppRoutes.menuOptions[index].icon,
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: (){
            /*
            //Esta es una forma de declarar nuestras
            //En caso que no las hayamos creado en el MaterialApp
            Route route = MaterialPageRoute<void>(
                builder: (BuildContext context) => const ListView1Screen(),
              );
            Navigator.pushReplacement(context,route); //Elimina la screen anterior 
                                                      //y muestra la nueva screen
            */

            //Este metodo se usa una vez se hayan especificado 
            //las rutas en el MaterialApp principal
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route); //Sólo necesita el contexto 
                                                              //y nombre de la ruta

          },
        ), 
        separatorBuilder: (_,__)=>const Divider(),
        itemCount: AppRoutes.getRoutes().length
      )
    );
  }
}