import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:jelkovec_app/firebase_messaging_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:jelkovec_app/AktivnostiTrziste.dart';
import 'package:jelkovec_app/Home.dart';
import 'package:jelkovec_app/HomePage.dart';
import 'package:jelkovec_app/IzracunBodova.dart';
import 'package:jelkovec_app/SkolaInfo.dart';
import 'package:jelkovec_app/NotificationService.dart';
import 'package:jelkovec_app/schedule_service.dart';


Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message: ${message.messageId}');
}

void main() async {
 // await dotenv.load(fileName: '.env');
  print("Loaded environment variables:");

  WidgetsFlutterBinding.ensureInitialized();
  // Load .env file
  try {
    await dotenv.load(fileName: '.env');
    print('.env file loaded successfully');
  } catch (e) {
    print('Error loading .env file: $e');
  }

  // Access environment variables
  String apiKey = dotenv.env['GOOGLE_API_KEY']!;
  String appId = dotenv.env['FIREBASE_APP_ID']!;
  String messagingSenderId = dotenv.env['PROJECT_NUM']!;
  String projectId = dotenv.env['PROJECT_ID']!;

  // Initialize Firebase with environment variables
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: apiKey,
      appId: appId,
      messagingSenderId: messagingSenderId,
      projectId: projectId,
    ),
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  try {
    await NotificationService.initialize();
  } catch (e) {
    print('Error initializing NotificationService: $e');
  }

  try {
    await FirebaseMessagingService.initialize();
  } catch (e) {
    print('Error initializing MyFirebaseMessagingService: $e');
  }

  try {
    await ScheduleService.initialize();
  } catch (e) {
    print('Error initializing ScheduleService: $e');
  }

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
        '/home': (context) => const Home(),
        '/izracunbodovi': (context) => const IzracunBodova(),
        'o_skoli': (context) => const SkolaInfo(),
        'aktivnostitrziste': (context) => AktivnostiTrziste(),
      },
      home: const HomePage(),
    );
  }
}
