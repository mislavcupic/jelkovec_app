import 'package:flutter/material.dart';

class Drustveni extends StatelessWidget {
  const Drustveni({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Društveni aktiv'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'android/assets/images/drustveni.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.3),
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Svaki napredak čovječanstva prati i potrebu da se obogaćujemo kao društvo. Društveni predmeti su osnovni sastojak bez kojeg tehnološki napredak ne može biti potpun i kvalitetno usmjeren. Bez svijesti o ispravnom i etičkom korištenju tehnologije, bez potrebne svijesti o tome kako komunicirati, kako na asertivan način istaknuti važnost ideja koje će poboljšati naše društvo, nijedan napredak neće biti potpun. Društveni aktiv naše škole pokreće mnoge aktivnosti i kroz različite aktivnosti poput terenskih nastava i projekata uključuje mlade direktno tamo gdje se zapravo sve i događa, u društvu. Kroz aktivnosti koje nudimo moći ćete se ostvariti i na područjima na kojima ste mislili da možda i nisu vaš primarni odabir. Dođi nam i uvjeri se i sam!',
                      style: TextStyle(fontSize: 16, color: Colors.red),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
