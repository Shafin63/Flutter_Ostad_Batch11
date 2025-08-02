import 'package:flutter/material.dart';
import 'custom_widgets/CityCard.dart';

class Class2CustomWidget extends StatelessWidget {
  const Class2CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CityCard(img: 'https://images.pexels.com/photos/415958/pexels-photo-415958.jpeg', cityName: 'Switzerland', price: '200', rating: '4.5',),
              SizedBox(width: 20,),
              CityCard(img: 'https://images.pexels.com/photos/460672/pexels-photo-460672.jpeg', cityName: 'London', price: '1000', rating: '5.0',),
              SizedBox(width: 20,),
              CityCard(img: 'https://images.pexels.com/photos/2382896/pexels-photo-2382896.jpeg', cityName: 'Dhaka', price: '500', rating: '3.5',)
            ],
          ),
        ),
      ),
    );
  }
}
