import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 220,
      width: double.infinity,
      color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Populares',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const _MovieSlider(),
              itemCount: 20,
            ),
          )
        ],
      )
    );
  }
}

class _MovieSlider extends StatelessWidget {
  const _MovieSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    );
  }
}