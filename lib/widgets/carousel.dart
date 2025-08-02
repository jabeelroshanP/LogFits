import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget carousel() {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0),
    child: CarouselSlider(
      items: caro.map((path) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20), 
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 16 / 9,
      ),
    ),
  );
}



List caro = [
  "assets/caro3.png",
  "assets/caro2.jpg",
  "assets/caro1.avif",
  "assets/caro4.webp",
  "assets/caro5.jpg",
];