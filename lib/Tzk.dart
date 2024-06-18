import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Tzk extends StatelessWidget {
  final List<String> imagePaths = [
    'android/assets/images/bicikl.jpg',
    'android/assets/images/suma.jpg',
    'android/assets/images/suma2.jpg',
    'android/assets/images/klizanje1.jpg',
    'android/assets/images/klizanje2.jpg',
    'android/assets/images/bazen.jpg',
  ];

   Tzk({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fakultativna TZK'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                autoPlayAnimationDuration: const Duration(milliseconds: 700),
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
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Fakultativna nastava iz tjelesne i zdravstvene kulture stiže kao vrlo važan odgovor naše škole na činjenicu da je sve veći broj mladih u vremenu razvoja tehnologije slabije aktivno i potrebno je vratiti mlade u tjelesnu kondiciju te im ponuditi rekreativne sadržaje u kojima mogu razvijati i unaprijediti svoje motoričke vještine. Nastavnik ih uključuje u širok raspon aktivnosti. Uskoro poveznica na njihov instagram profil.',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
