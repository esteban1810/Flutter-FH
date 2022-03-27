import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final List options = const ['mario bros','pacman','Snow Bros'];
  const ListView2Screen({Key? key}) : 
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("ListView Tipo 2")
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body:ListView.separated( //El metodo separated renderiza nuestros 
                                //elementos al momento de visualizarlos
        itemBuilder: (context, index)=> ListTile(
          leading: const Icon(Icons.airline_seat_legroom_reduced_outlined, color: Colors.lightGreen,),
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.lightGreen,),
          onTap: (){
            String value = options[index];
            print('Impresion: '+value);
          },
        ), 
        separatorBuilder:(context, index) => const Divider(), 
        itemCount: options.length
      )
    );
  }
}