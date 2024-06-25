import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class AktivnostiTrziste extends StatelessWidget {
  final List<String> imagePaths = [
    'android/assets/images/programming.jpg',
    'android/assets/images/people.jpg',
    'android/assets/images/jelkovec3.jpg',
    'android/assets/images/jelkovec4.jpg',
    'android/assets/images/jelkovec5.jpg',
    'android/assets/images/jelkovec6.jpg',
    'android/assets/images/jelkovec7.jpg',
    'android/assets/images/jelkovec8.jpg',
  ];

  AktivnostiTrziste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upis učenika'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                          'Upisi i ostale informacije o Srednjoj školi Jelkovec',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
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
    );
  }

  void _launchURL() async {
    final Uri url = Uri.parse('https://www.ss-jelkovec.skole.hr/skola/upisi');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}

