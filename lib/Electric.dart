import 'package:flutter/material.dart';

class Electric extends StatelessWidget {
  const Electric({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elektrotehnika i robotika'),
      ),
      body: Stack(
        fit: StackFit.expand, // Make the Stack fill the entire Scaffold
        children: [
          Image.asset(
            'android/assets/images/electrical2.jpg',
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
                    'Elektrotehnika, robotika, 3d modeliranje, programiranje, web dizajn, automatika, i još mnogo toga s čime ćeš se upoznati na osnovnoj i naprednoj razini (ovisno o tvojem osobnom angažmanu) sastavni su dio našeg plana i programa, a ishode ostvarujemo kroz brojne nastavne i izvannastavne aktivnosti, natjecanja, projektne aktivnosti. Biti dio Srednje škole Jelkovec znači otisnuti se na putovanje koje ti omogućuje konkurentnost na tržištu rada, u svijetu u kojem su konkretna praktična i vezana znanja i vještine prijeko potrebni za tehnološki napredak. Ljudi i dalje čine najvažniji dio tog napretka, stoga, ako vidiš da je to nešto u čemu se dobro snalaziš, prijavi se i upiši našu školu!',
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
