import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
   
  const CardSwiper({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height*.5,
      width: double.infinity,
      color: Colors.red,
      child: Swiper(
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
              //  Image.network(
              //   "https://via.placeholder.com/288x188",
              //   fit: BoxFit.fill,
              // ),
            ),
          );
        },
      ),
    );
  }
}