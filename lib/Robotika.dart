import 'package:flutter/material.dart';

class Robotika extends StatelessWidget {
  const Robotika({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Robotika'),
      ),
      body: Stack(
        fit: StackFit.expand, // Make the Stack fill the entire Scaffold
        children: [
          Image.asset(
            'android/assets/images/robotics.jpg',
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
                    'U Srednjoj školi Jelkovec godinama njegujemo izvannastavne aktivnosti te aktivnosti priprema za međunarodna te nacionalna natjecanja iz područja robotike, u čemu postižemo vrhunske rezultate te smo već nekoliko godina zaredom pobjednici u području Robotike na WorldSkills natjecanju. Učenici na robotici mogu naučiti mnoge korisne vještine i znanja koji su direktno povezani sa strukom.',
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
