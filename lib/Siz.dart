import 'package:flutter/material.dart';

class Siz extends StatelessWidget {
  const Siz({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Škola i zajednica'),
      ),
      body: Stack(
        fit: StackFit.expand, // Make the Stack fill the entire Scaffold
        children: [
          Image.asset(
            'android/assets/images/siz.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6), // Semi-transparent black background
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: kToolbarHeight), // Space for the app bar
                  Text(
                    'Škola i zajednica je fakultativna nastava koja omogućuje učenicima da se uključe u aktivniji pristup i doprinos pozitivnim promjenama u društvenoj zajednici. Učenici sami istražuju, promišljaju te stječu iskustvo u različitim područjima koji se tiču škole i šire društvene zajednice. Pritom upoznaju i neke od znanstvenih načina prikupljanja podataka i djelovanja prema dobivenim podacima.',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
