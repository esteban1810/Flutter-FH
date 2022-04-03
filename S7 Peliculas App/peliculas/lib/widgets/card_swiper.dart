import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
   
  const CardSwiper({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height*.5,
      width: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 20
        ),
        child: Column(
          children: [
            Swiper(
              itemCount: 10,
              layout: SwiperLayout.STACK,
              itemHeight: size.height*.4,
              itemWidth: size.width*.5,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/details',arguments: 'vamos a por todo');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),   
                    child: const FadeInImage(
                      image: NetworkImage('https://via.placeholder.com/288x188'),
                      placeholder: AssetImage('assets/no-image.jpg'),
                      fit: BoxFit.fill,
                    )
                  ),
                );
              },
            ),


            // const SizedBox(height: 20,),


            // Container(
            //   height: 500,
            //   width: double.infinity,
            //   color: Colors.red,
            //   child: Column(
            //     children: [
            //       Container(
            //         height: 50,
            //         color: Colors.green,
            //       )
            //     ]
            //   ),
            // )
            // Expanded(
            //   child: child
            // )
          
            // Expanded(
            //   child: Container(
            //     margin: const EdgeInsets.only(top: 20),
            //     width: double.infinity,
            //     color: Colors.red,
            //     child: Column(
            //       children: [
            //         const Text('Populares',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            //         ListView.builder(
            //           itemBuilder: (context,index)=> Container(
            //             height: 250,
            //             width: 100,
            //             color: Colors.green,
            //           ),
            //           itemCount: 10,
            
            //         )
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),

      
    );
  }
}