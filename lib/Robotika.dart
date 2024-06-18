import 'package:flutter/material.dart';

class Robotika extends StatelessWidget {
  const Robotika({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Robotika'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'android/assets/images/robotics.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'U Srednjoj školi Jelkovec godinama njegujemo izvannastavne aktivnosti te aktivnosti priprema za međunarodna te nacionalna natjecanja iz područja robotike, u čemu postižemo vrhunske rezultate te smo već nekoliko godina zaredom pobjednici u području Robotike na WorldSkills natjecanju. Učenici na robotici mogu naučiti mnoge korisne vještine i znanja koji su direktno povezani sa strukom.',
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
