import 'package:flutter/material.dart';

class AmerickaKultura extends StatelessWidget {
  const AmerickaKultura({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Američka kultura'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'android/assets/images/people.jpg',
            fit: BoxFit.cover,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Tekst za američku kulturu',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
