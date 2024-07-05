import 'package:flutter/material.dart';
import 'package:jelkovec_app/PrvaPomoc.dart';
import 'package:jelkovec_app/Robotika.dart';
import 'package:jelkovec_app/Tzk.dart';
import 'package:jelkovec_app/AmerickaKultura.dart';
import 'package:jelkovec_app/Siz.dart';

class Izvannastavne extends StatelessWidget {
  const Izvannastavne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Kurikularne aktivnosti"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildMenuItem(
              context,
              'android/assets/images/robotics.jpg',
              'Robotika',
              const Robotika(),
            ),
            buildMenuItem(
              context,
              'android/assets/images/firstaid.jpg',
              'Prva pomoć',
              const PrvaPomoc(),
            ),
            buildMenuItem(
              context,
              'android/assets/images/klizanje2.jpg',
              'TZK',
               Tzk(),
            ),
            buildMenuItem(
              context,
              'android/assets/images/people.jpg',
              'Američka kultura',
              const AmerickaKultura(),
            ),
            buildMenuItem(
              context,
              'android/assets/images/siz.jpg',
              'Škola i zajednica',
              const Siz(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem(BuildContext context, String imagePath, String title, Widget destination) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16.0), // Add padding below each image
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => destination,
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7), // Background color with opacity
                ),
                child: Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
