import 'package:flutter/material.dart';
import 'package:jelkovec_app/PrvaPomoc.dart';
import 'package:jelkovec_app/Robotika.dart';
import 'package:jelkovec_app/Tzk.dart';
import 'package:jelkovec_app/AmerickaKultura.dart';
import 'package:jelkovec_app/Siz.dart';

class ActivityCard extends StatelessWidget {
  final String imagePath;
  final String text;
  final String route;

  const ActivityCard({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Izvannastavne extends StatelessWidget {
  const Izvannastavne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/prvapomoc': (context) => const PrvaPomoc(),
        '/robotika': (context) => const Robotika(),
        '/tzk': (context) =>  Tzk(),
        '/americka': (context) => const AmerickaKultura(),
        '/siz': (context) => const Siz(),
      },
      home: Scaffold(
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              ActivityCard(
                imagePath: "android/assets/images/robotics.jpg",
                text: "Robotika",
                route: "/robotika",
              ),
              ActivityCard(
                imagePath: "android/assets/images/firstaid.jpg",
                text: "Prva pomoć",
                route: "/prvapomoc",
              ),
              ActivityCard(
                imagePath: "android/assets/images/klizanje2.jpg",
                text: "TZK",
                route: "/tzk",
              ),
              ActivityCard(
                imagePath: "android/assets/images/people.jpg",
                text: "Američka kultura",
                route: "/americka",
              ),
              ActivityCard(
                imagePath: "android/assets/images/siz.jpg",
                text: "Škola i zajednica",
                route: "/siz",
              ),
              // Dodajte više ActivityCard widgeta po potrebi
            ],
          ),
        ),
      ),
    );
  }
}