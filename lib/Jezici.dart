import 'package:flutter/material.dart';

class Jezici extends StatelessWidget {
  const Jezici({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jezici u Srednjoj školi Jelkovec'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            child:
              Image.asset(
                'android/assets/images/languages.png',
                fit: BoxFit.cover,
              ),
          ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Ovo je prostor za tekst ispod fotografije. Ovdje možemo napisati sve o prirodoslovnom aktivu i aktivnostima koje se nude.',
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
