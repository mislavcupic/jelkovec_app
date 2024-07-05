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
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'android/assets/images/school.jpg',
            fit: BoxFit.cover,
          ),
          // Black Overlay with Container
          Container(
            color: Colors.black.withOpacity(0.6),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: kToolbarHeight), // Space for the app bar

                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: InkWell(
                        onTap: _launchURL,
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.assignment, size: 50),
                              SizedBox(height: 10),
                              Text(
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
                  const SizedBox(height: 16), // Add spacing below the card
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL() async {
    final Uri url = Uri.parse('http://www.ss-jelkovec.skole.hr/skola/upisi');
    if (!await canLaunch(url.toString())) {
      throw 'Could not launch $url';
    }
    await launch(url.toString());
  }
}
