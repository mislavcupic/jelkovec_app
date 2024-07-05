import 'package:flutter/material.dart';
import 'package:jelkovec_app/AktivnostiTrziste.dart';
import 'package:jelkovec_app/IzracunBodova.dart';
import 'package:jelkovec_app/imageItem.dart';
import 'package:jelkovec_app/Home.dart';
import 'package:jelkovec_app/Izvannastavne.dart';

var photo = ImageItem("android/assets/images/jelkovec.png", "O školi", "Saznaj više o našoj školi...");

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildMenuItem(
              context,
              'android/assets/images/jelkovec3.jpg',
              'Izračunaj bodove',
              const IzracunBodova(),
            ),
            buildMenuItem(
              context,
              'android/assets/images/jelkovec4.jpg',
              'Aktivnosti u školi',
              const Home(),
            ),
            buildMenuItem(
              context,
              'android/assets/images/siz.jpg',
              'Kurikularne aktivnosti',
              const Izvannastavne(),
            ),
            buildMenuItem(
              context,
              'android/assets/images/apply.jpg',
              'Upisi - informacije',
              AktivnostiTrziste(),
            ),
            // Add more menu items here...
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(BuildContext context, String imagePath, String title, Widget destination) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destination,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 180,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
