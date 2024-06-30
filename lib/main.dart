import 'package:flutter/material.dart';
import 'package:jelkovec_app/AktivnostiTrziste.dart';
import 'package:jelkovec_app/Home.dart';
import 'package:jelkovec_app/HomePage.dart';
import 'package:jelkovec_app/IzracunBodova.dart';
import 'package:jelkovec_app/SkolaInfo.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jelkovec_app/firebase_messaging_service.dart';
import 'package:jelkovec_app/NotificationService.dart';
import 'package:jelkovec_app/schedule_service.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await NotificationService.initialize();
  await MyFirebaseMessagingService.initialize();
  await ScheduleService.initialize();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/homepage',
      routes: {
        "/homepage": (context) => const HomePage(),
        '/home': (context) => const Home(), // Define a route for the new screen
        '/izracunbodovi': (context) => const IzracunBodova(),
        'o_skoli': (context) => const SkolaInfo(),
        'aktivnostitrziste':(context) =>  AktivnostiTrziste()
      },
      home: const HomePage(),
    );
  }
}

