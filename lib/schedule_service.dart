import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:jelkovec_app/NotificationService.dart';

class ScheduleService {
  static Future<void> initialize() async {
    await AndroidAlarmManager.periodic(
      const Duration(days: 3),
      0,
      _sendPeriodicNotification,
      startAt: DateTime.now().add(const Duration(days: 3)),
      exact: true,
      wakeup: true,
    );
  }

  static Future<void> _sendPeriodicNotification() async {
    await NotificationService.showNotification(
      title: 'Scheduled Notification',
      body: 'Stavi nas na prvo mjesto i upiši Srednju školu Jelkovec!',
    );
  }
}