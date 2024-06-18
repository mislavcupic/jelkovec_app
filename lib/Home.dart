
import 'package:flutter/material.dart';
import 'package:jelkovec_app/Electric.dart';
import 'package:jelkovec_app/Jezici.dart';
import 'package:jelkovec_app/Prirodoslovni.dart';
import 'package:jelkovec_app/Anketa.dart';
import 'package:jelkovec_app/Drustveni.dart';
import 'package:jelkovec_app/SkolaInfo.dart';

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

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/o_skoli': (context) => const SkolaInfo(),
        '/prirodoslovni': (context) => const Prirodoslovni(),
        '/jezici': (context) => const Jezici(),
        '/drustveni': (context) => const Drustveni(),
        '/electric': (context) => const Electric(),
        '/anketa': (context) => const Anketa(),
      },
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Školske aktivnosti"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              ActivityCard(
                imagePath: "android/assets/images/jelkovec.png",
                text: "O Srednjoj školi Jelkovec",
                route: "/o_skoli",
              ),
              ActivityCard(
                imagePath: "android/assets/images/electrical2.jpg",
                text: "Nastavne aktivnosti u elektrotehnici",
                route: "/electric",
              ),
              ActivityCard(
                imagePath: "android/assets/images/math.jpg",
                text: "Aktivnosti u prirodoslovnom području",
                route: "/prirodoslovni",
              ),
              ActivityCard(
                imagePath: "android/assets/images/languages.png",
                text: "Jezični aktiv",
                route: "/jezici",
              ),
              ActivityCard(
                imagePath: "android/assets/images/people.jpg",
                text: "Društvene aktivnosti",
                route: "/drustveni",
              ),
              ActivityCard(
                imagePath: "android/assets/images/anketa.jpg",
                text: "Informativna anketa",
                route: "/anketa",
              ),
            ],
          ),
        ),
      ),
    );
  }
}