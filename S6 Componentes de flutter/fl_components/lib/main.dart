import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getRoutes(),
      //onGenerateRoute se utiliza para mandar a llamar una vista, para 
      //cuando no este definida la ruta a la que se desea acceder
      //onGenerateRoute: (settings)=>AppRoutes.onGenerateRoute(settings)
      onGenerateRoute: AppRoutes.onGenerateRoute //Cuando nuestra funcion recibe como argumento 
                                                  //El mismo valor que llama a nuestra función
                                                  //Se puede omitir los argumentos, tal es
                                                  //este ejemplo
    );
  }
}