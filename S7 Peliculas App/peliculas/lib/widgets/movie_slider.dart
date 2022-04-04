import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 220,
      width: double.infinity,
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
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/details',arguments: 'vamos');
            },
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 130,
                width: double.infinity,
                color: Colors.grey,
                child: const FadeInImage(
                  image: NetworkImage('https://via.placeholder.com/288x188'),
                  placeholder: AssetImage('assets/no-image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5,),
          const Text('El retorno del jedi encabritado más que nunca',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}