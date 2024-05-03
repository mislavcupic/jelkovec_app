import 'package:flutter/material.dart';
import 'package:jelkovec_app/AktivnostiTrziste.dart';
import 'package:jelkovec_app/IzracunBodova.dart';
import 'package:jelkovec_app/imageItem.dart';
import 'package:jelkovec_app/Home.dart';
import 'package:jelkovec_app/Izvannastavne.dart';


var photo = ImageItem("android/assets/images/jelkovec.png", "O školi", "Saznaj više o našoj školi...");



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gornji dio slike
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'android/assets/images/jelkovec2.jpg',
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
          ),
          // Dekorativni tekst
          Positioned(
            top: 250,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IzracunBodova(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Row(

                  children: [
                    ClipOval(
                      child: Image.asset(
                        'android/assets/images/calculator.jpg',
                        width: 50, // adjust width as needed
                        height: 50, // adjust height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10), // Add some space between image and other widgets in Row
                    const Text(
                      'Izračunaj bodove',
                      style: TextStyle(fontSize: 22),
                    ),

                  ],
                ),
              ),
            ),
          ),
          // Ostali tekst
          Positioned(
            top: 360,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(

                  children: [
                    ClipOval(
                      child: Image.asset(
                        'android/assets/images/education.jpg',
                        width: 50, // adjust width as needed
                        height: 50, // adjust height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10), // Add some space between image and other widgets in Row
                    const Text(
                      'Aktivnosti u školi',
                      style: TextStyle(fontSize: 20),
                    ),

                  ],
                ),
                ),
            ),
          ),
          Positioned(
            top: 470,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Izvannastavne(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(

                  children: [
                    ClipOval(
                      child: Image.asset(
                        'android/assets/images/stem.jpg',
                        width: 50, // adjust width as needed
                        height: 50, // adjust height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10), // Add some space between image and other widgets in Row
                    const Text(
                      'Izvannastavne aktivnosti',
                      style: TextStyle(fontSize: 18),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 580,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  AktivnostiTrziste(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(

                  children: [
                    ClipOval(
                      child: Image.asset(
                        'android/assets/images/inovation.jpg',
                        width: 50, // adjust width as needed
                        height: 50, // adjust height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10), // Add some space between image and other widgets in Row
                    const Text(
                      'Dosegni izvrsnost!',
                      style: TextStyle(fontSize: 22),
                    ),

                  ],
                ),
              ),
            ),
          ),
          // Ostali tekstovi...
          // Donji dio kružnog gumba
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
           /*   child: Container( // Wrap GestureDetector with Container
                width: double.infinity, // Set width to fill available space
                height: 60, // Set a fixed height for the GestureDetector
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ), */
            ),
          ),

        ],
      ),
    );
  }
}
