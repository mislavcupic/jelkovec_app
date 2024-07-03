import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:jelkovec_app/NotificationService.dart'; // Adjust path as needed
import 'package:firebase_core/firebase_core.dart';


class FirebaseMessagingService {
  static Future<void> initialize() async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    FirebaseMessaging messaging = FirebaseMessaging.instance;

    // Handle permissions for Android
    await messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    // Get the token and save it
    String? token = await messaging.getToken();

    if (token != null) {
      // Save token to your backend if needed
    }

    // Handle foreground messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        NotificationService.showNotification(
          title: message.notification!.title,
          body: message.notification!.body,
        );
      }
    });
  }

  static Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    await Firebase.initializeApp();
    if (message.notification != null) {
      NotificationService.showNotification(
        title: message.notification!.title,
        body: message.notification!.body,
      );
    }
  }
}
