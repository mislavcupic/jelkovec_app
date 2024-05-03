import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AktivnostiTrziste extends StatelessWidget {
   List<String> imagePaths = [
    'android/assets/images/programming.jpg',
    'android/assets/images/people.jpg',
    'android/assets/images/jelkovec3.jpg',
    'android/assets/images/jelkovec4.jpg',
    'android/assets/images/jelkovec5.jpg',
    'android/assets/images/jelkovec6.jpg',
    'android/assets/images/jelkovec7.jpg',
    'android/assets/images/jelkovec8.jpg',
  ];

   AktivnostiTrziste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dosegni izvrsnost!'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 1700),
              viewportFraction: 0.8,
            ),
            items: imagePaths.map((String imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  );
                },
              );
            }).toList(),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Upoznaj svijet programiranja, web dizajna, elektrotehnike i robotike. Ovdje ćeš steći osnovna i napredna znanja koja će ti pomoći da razvijaš jednostavnije, kao i kompleksnije i zahtjevnije koncepte iz navedenih područja. Srednja škola Jelkovec nudi ti širok izbor mogućnosti. ',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
            ),
          ),

        ],
      ),
    );
  }
}