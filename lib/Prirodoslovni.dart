import 'package:flutter/material.dart';

class Prirodoslovni extends StatelessWidget {
  const Prirodoslovni({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prirodni predmeti u SŠJ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'android/assets/images/math.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Prirodoslovni aktiv nudi mnoge sadržaje, poput fakultativne nastave, priprema za natjecanja, individualnih i skupnih, različite projekte i aktivnosti koje omogućuju zainteresiranim učenicima da budu izvrsni i konkurentni za upis različitih fakulteta. Bogatstvo programa i moderan pristup vežu se uz prirodoslovni aktiv Srednje škole Jelkovec, stoga budi i ti dio tog napretka!',
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
