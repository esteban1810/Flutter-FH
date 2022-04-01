import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          itemCount: 10,
          //Widget Function(BuildContext, int)
          itemBuilder: (context,index)=>FadeInImage(
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            placeholder: const AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://picsum.photos/500/200?image=${index+1}')
          )
        ),
      )
    );
  }
}