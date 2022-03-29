import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  showDialogIOS(context){
    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context)=> CupertinoAlertDialog(
        title: const Text('Titulo'),
        actions: [
          TextButton(
            onPressed: (){Navigator.pop(context);}, 
            child: const Text('Cancel',style: TextStyle(color: Colors.red),),
          ),
          TextButton(
            onPressed: (){Navigator.pop(context);}, 
            child: const Text('Ok',style: TextStyle(color: Colors.blue),),
          )
        ],
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Sit voluptate reprehenderit officia ex amet consectetur ut minim sint culpa pariatur.'),
            SizedBox(height: 20,),
            FlutterLogo(size: 60,),
          ],
          
        ),

      )
    );
  }

  showDialogAndroid(context){
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context)=>AlertDialog(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius:  BorderRadiusDirectional.circular(18)
        ),
        title: const Text('Titulo'),
        actions: [
          TextButton(
            onPressed: (){Navigator.pop(context);}, 
            child: const Text('Cancel',style: TextStyle(color: Colors.red),),
          ),
          TextButton(
            onPressed: (){Navigator.pop(context);}, 
            child: const Text('Ok',style: TextStyle(color: Colors.blue),),
          )
        ],
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Sit voluptate reprehenderit officia ex amet consectetur ut minim sint culpa pariatur.'),
            SizedBox(height: 20,),
            FlutterLogo(size: 60,),
          ],
          
        ),
      )
    );
  }
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
         child: ElevatedButton(
           onPressed: ()=> Platform.isAndroid ? showDialogAndroid(context) : showDialogIOS(context), 
           child: const Text('Mostrar Alerta')
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        },
      )
    );
  }
}