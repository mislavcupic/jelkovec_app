import 'package:flutter/material.dart';
import 'package:jelkovec_app/build_menu_item.dart';  // Import the buildMenuItem function
import 'package:jelkovec_app/Electric.dart';
import 'package:jelkovec_app/Jezici.dart';
import 'package:jelkovec_app/Prirodoslovni.dart';
import 'package:jelkovec_app/Anketa.dart';
import 'package:jelkovec_app/Drustveni.dart';
import 'package:jelkovec_app/SkolaInfo.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
        backgroundColor: Colors.black,
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildMenuItem(
                context,
                "android/assets/images/jelkovec.png",
                "O Srednjoj školi Jelkovec",
                const SkolaInfo(),
              ),
              buildMenuItem(
                context,
                "android/assets/images/electrical2.jpg",
                "Nastavne aktivnosti u elektrotehnici",
                const Electric(),
              ),
              buildMenuItem(
                context,
                "android/assets/images/math.jpg",
                "Aktivnosti u prirodoslovnom području",
                const Prirodoslovni(),
              ),
              buildMenuItem(
                context,
                "android/assets/images/languages2.jpg",
                "Jezični aktiv",
                const Jezici(),
              ),
              buildMenuItem(
                context,
                "android/assets/images/people.jpg",
                "Društvene aktivnosti",
                const Drustveni(),
              ),
              buildMenuItem(
                context,
                "android/assets/images/anketa.jpg",
                "Informativna anketa",
                const Anketa(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

