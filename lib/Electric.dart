import 'package:flutter/material.dart';

class Electric extends StatelessWidget {
  const Electric({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elektrotehnika i robotika'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'android/assets/images/electrical2.jpg',
            fit: BoxFit.cover,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Elektrotehnika, robotika, 3d modeliranje, programiranje, web dizajn, automatika, i još mnogo toga s čime ćeš se upoznati na osnovnoj i naprednoj razini (ovisno o tvojem osobnom angažmanu) sastavni su dio našeg plana i programa, a ishode ostvarujemo kroz brojne nastavne i izvannastavne aktivnosti, natjecanja, projektne aktivnosti. Biti dio Srednje škole Jelkovec znači otisnuti se na putovanje koje ti omogućuje konkurentnost na tržištu rada, u svijetu u kojem su konkretna praktična i vezana znanja i vještine prijeko potrebni za tehnološki napredak. Ljudi i dalje čine najvažniji dio tog napretka, stoga, ako vidiš da je to nešto u čemu se dobro snalaziš, prijavi se i upiši našu školu!',
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
