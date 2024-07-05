import 'package:flutter/material.dart';

class Jezici extends StatelessWidget {
  const Jezici({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jezici u Srednjoj školi Jelkovec'),
      ),
      body: Stack(
        fit: StackFit.expand, // Make the Stack fill the entire Scaffold
        children: [
          Image.asset(
            'android/assets/images/languages2.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8), // Semi-transparent black background
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: kToolbarHeight), // Space for the app bar
                  Text(
                    'Pripreme za državnu maturu, fakultativne nastave, mreža čitanja, projekti, nastupi na svečanim dodjelama, uvježbavanje komunikacijskih procesa, medijske kulture, projekti, posjeti stranim državama u sklopu projekata, spajanje struke i najbitnijeg, znanja jezika. Koliko jezika čovjek poznaje, toliko vrijedi! Upoznaj se sa svjetskim jezicima, upotrijebi ih u promociji vlastitog znanja i strukovnog napretka, osvoji tržište i ponosi se znanjem koje danas mnogi nemaju. Izvrsni rezultati na natjecanjima kao i na državnoj maturi su mjerilo kvalitete našeg strukovnog vijeća.',
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
