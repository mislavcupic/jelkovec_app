import 'package:flutter/material.dart';


class SkolaInfo extends StatelessWidget {
  const SkolaInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('O Srednjoj školi Jelkovec'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'android/assets/images/jelkovec2.jpg',
            fit: BoxFit.cover,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Srednja škola Jelkovec ima tradiciju i potrebno iskustvo, a opet, dovoljno mladosti i odlučnosti da usmjeri učenice i učenike u smjeru napretka u željenim smjerovima. Naši su programi moderni i kvalitetni, zasnovani na modernim kurikulumima i prati novije spoznaje iz područja elektrotehnike, robotike te programiranja, kao i wrb dizajna. Osim činjenice da naša škola obrazuje učenice i učenike za izlazak na tržište rada, priprema ih za fakultete različitih obrazovnih profila, uglavnom inženjerskih.',
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
