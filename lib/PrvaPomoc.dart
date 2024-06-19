import 'package:flutter/material.dart';

class PrvaPomoc extends StatelessWidget {
  const PrvaPomoc({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prva pomoć u SŠJ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'android/assets/images/firstaid.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Fakultativna nastava iz prve pomoći provodi se kao fakultativna nastava kratko, ali kao nastavak dugogodišnje izvannastavne aktivnosti pružanja prve pomoći. Cilj je osvijestiti mlade o potrebi da djeluju u nekih situacijama, brinući pritom o sigurnosti sebe i drugih koji su doživjeli nesreću ili naglo nastupajuću bolest, skratiti vrijeme oporavka i spriječiti nastanak invaliditeta kao posljedice različitih ozljeda. Cilj je prema priručnicima prve pomoći naučiti mlade kako se djeluje ispravno u ovakvim situacijama, kako svojim postupcima pomoći, a ne povećati štetu te kako pružiti psihosocijalnu podršku.',
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
