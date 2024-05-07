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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
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
                      'POVEZNICA NA KRATKU INFORMATIVNU ANKETU',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }



_launchURL() async {
    final Uri url = Uri.parse('https://forms.gle/ug12UameyJkfzZEf6');
    await launchUrl(url);
  }
}
