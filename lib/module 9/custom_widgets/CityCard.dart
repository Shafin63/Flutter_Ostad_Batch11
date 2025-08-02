import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String img, cityName, price, rating;
  const CityCard({
    super.key, required this.img, required this.cityName, required this.price, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.cover,
              // Darken the image by compositing a semi‐transparent black
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), // adjust opacity to taste
                BlendMode.darken,
              ),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(cityName,
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            right: 20,
            child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              elevation: 5,
              foregroundColor: Colors.white,
            ), child: Text("⭐ $rating"),)),
        Positioned(
            bottom: 10,
            left: 20,
            child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              elevation: 5,
              foregroundColor: Colors.white,
            ), child: Text("💲$price"),))
      ],
    );
  }
}
