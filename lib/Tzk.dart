import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class Tzk extends StatelessWidget {
  final List<String> imagePaths = [
    'android/assets/images/bazen.jpg',
    'android/assets/images/bicikl.jpg',
    'android/assets/images/klizanje1.jpg',
    'android/assets/images/suma.jpg',
    'android/assets/images/suma2.jpg',
  ];

  Tzk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fakultativna TZK'),
      ),
      body: Stack(
        fit: StackFit.expand, // Make the Stack fill the entire Scaffold
        children: [
          Image.asset(
            'android/assets/images/bazen.jpg', // Use a suitable background image here
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6), // Semi-transparent black background
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: kToolbarHeight), // Space for the app bar
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 4, // Adjust the elevation for the shadow effect
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Adjust the border radius for rounded corners
                      ),
                      child: InkWell(
                        onTap: _launchURL,
                        child: Container(
                          width: 300,
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.assignment),
                              const SizedBox(height: 10),
                              const Text(
                                'Fakultativna nastava iz tjelesne i zdravstvene kulture stiže kao vrlo važan odgovor naše škole na činjenicu da je sve veći broj mladih u vremenu razvoja tehnologije slabije aktivno i potrebno je vratiti mlade u tjelesnu kondiciju te im ponuditi rekreativne sadržaje u kojima mogu razvijati i unaprijediti svoje motoričke vještine. Nastavnik ih uključuje u širok raspon aktivnosti. Klik na tekst je ujedno i poveznica na njihov instagram profil.',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  void _launchURL() async {
    final Uri url = Uri.parse('https://www.instagram.com/fakultativni_tzk?igsh=MXI1cG1sN3Nld3U4Nw%3D%3D&utm_source=qr');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
