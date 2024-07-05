import 'package:flutter/material.dart';

class SkolaInfo extends StatelessWidget {
  const SkolaInfo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('O Srednjoj školi Jelkovec'),
      ),
      body: Stack(
        fit: StackFit.expand, // Make the Stack fill the entire Scaffold
        children: [
          Image.asset(
            'android/assets/images/jelkovec2.jpg',
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
                    'Srednja škola Jelkovec ima tradiciju i potrebno iskustvo, a opet, dovoljno mladosti i odlučnosti da usmjeri učenice i učenike u smjeru napretka u željenim smjerovima. Naši su programi moderni i kvalitetni, zasnovani na modernim kurikulumima i prati novije spoznaje iz područja elektrotehnike, robotike te programiranja, kao i web dizajna. Osim činjenice da naša škola obrazuje učenice i učenike za izlazak na tržište rada, priprema ih za fakultete različitih obrazovnih profila, uglavnom inženjerskih.',
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
