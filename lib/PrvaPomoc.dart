import 'package:flutter/material.dart';

class PrvaPomoc extends StatelessWidget {
  const PrvaPomoc({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prva pomoć u SŠJ'),
      ),
      body: Stack(
        fit: StackFit.expand, // Make the Stack fill the entire Scaffold
        children: [
          Image.asset(
            'android/assets/images/firstaid.jpg',
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
                    'Fakultativna nastava iz prve pomoći provodi se kao fakultativna nastava kratko, ali kao nastavak dugogodišnje izvannastavne aktivnosti pružanja prve pomoći. Cilj je osvijestiti mlade o potrebi da djeluju u nekih situacijama, brinući pritom o sigurnosti sebe i drugih koji su doživjeli nesreću ili naglo nastupajuću bolest, skratiti vrijeme oporavka i spriječiti nastanak invaliditeta kao posljedice različitih ozljeda. Cilj je prema priručnicima prve pomoći naučiti mlade kako se djeluje ispravno u ovakvim situacijama, kako svojim postupcima pomoći, a ne povećati štetu te kako pružiti psihosocijalnu podršku.',
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
