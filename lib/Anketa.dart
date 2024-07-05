import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Anketa extends StatelessWidget {
  const Anketa({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Ispunite kratku anketu'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'android/assets/images/anketa.jpg', // Replace with your actual background image path
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: _launchURL,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.assignment, size: 50),
                            SizedBox(height: 10),
                            Text(
                              'POVEZNICA NA KRATKU INFORMATIVNU ANKETU',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
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
    final Uri url = Uri.parse('https://forms.gle/ug12UameyJkfzZEf6');
    if (!await canLaunch(url.toString())) {
      throw 'Could not launch $url';
    }
    await launch(url.toString());
  }
}
