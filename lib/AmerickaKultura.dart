import 'package:flutter/material.dart';

class AmerickaKultura extends StatelessWidget {
  const AmerickaKultura({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Američka kultura'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'android/assets/images/people.jpg',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Američka kultura i civilizacija je fakultativna nastava koja se prirodno povezuje sa stručnim vijećem jezika, konkretno engleskog jezika, koja pruža dublji uvid u kulturu koja stoji iza stranog jezika koji je sveprisutan i potrebno ga je koristiti u velikom broju svakodnevnih, kao i poslovnih/strukovnih aktivnosti. Kroz upoznavanje sa američkom kulturom i povezivanjem s lokalnom zajednicom učenici kroz iskustvo uvježbavaju govor i pisano izražavanje razmjenjujući iskustva s nativnim korisnicima jezika te unaprjeđuju svoje znanje ne samo o jeziku, već i o kulturi američkog naroda. ',
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
