import 'package:flutter/material.dart';

class Prirodoslovni extends StatelessWidget {
  const Prirodoslovni({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prirodni predmeti u SŠJ'),
      ),
      body: Stack(
        fit: StackFit.expand, // Make the Stack fill the entire Scaffold
        children: [
          Image.asset(
            'android/assets/images/math.jpg',
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
                    'Prirodoslovni aktiv nudi mnoge sadržaje, poput fakultativne nastave, priprema za natjecanja, individualnih i skupnih, različite projekte i aktivnosti koje omogućuju zainteresiranim učenicima da budu izvrsni i konkurentni za upis različitih fakulteta. Bogatstvo programa i moderan pristup vežu se uz prirodoslovni aktiv Srednje škole Jelkovec, stoga budi i ti dio tog napretka!',
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
