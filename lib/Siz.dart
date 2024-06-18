import 'package:flutter/material.dart';

class Siz extends StatelessWidget {
  const Siz({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Škola i zajednica'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'android/assets/images/siz.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Škola i zajednica je fakultativna nastava koja omogućuje učenicima da se uključe u aktivniji pristup i doprinos pozitivnim promjenama u društvenoj zajednici. Učenici sami istražuju, promišljaju te stječu iskustvo u različitim područjima koji se tiču škole i šire društvene zajednice. Pritom upoznaju i neke od znanstvenih načina prikupljanja podataka i djelovanja prema dobivenim podacima. ',
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
