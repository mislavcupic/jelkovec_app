import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Anketa extends StatelessWidget {
  const Anketa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ispunite kratku anketu'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: _launchURL,
            child: const Text(
              'POVEZNICA NA KRATKU INFORMATIVNU ANKETU',
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