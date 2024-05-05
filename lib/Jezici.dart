import 'package:flutter/material.dart';

class Jezici extends StatelessWidget {
  const Jezici({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jezici u Srednjoj školi Jelkovec'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              child: Image.asset(
                'android/assets/images/languages.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ovo je prostor za tekst ispod fotografije. Ovdje možemo napisati sve o jezičnom aktivu i aktivnostima koje se nude.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
