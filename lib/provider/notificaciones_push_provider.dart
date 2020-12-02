import 'package:firebase_messaging/firebase_messaging.dart';

class NotificacionesProvider {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  initNotifications() async {
    await _firebaseMessaging.requestNotificationPermissions();
    final token = await _firebaseMessaging.getToken();
    print('====== FCM Token =====');
    print('token: $token');
    // f4N7ieZIRPmOID3iwUJX9j:APA91bFlc2b1_FBumH5TFsTQM0LLs6Mx1bQKHMans_mijusQWDd1xUY4ArqdFhtBIPIkLovNmvj9FWXj3KGcy0LM-cHrjX23mWltj2vXYfnTYHdLX0_f-w2_5hH58aCD72GEiwyPlENN

    _firebaseMessaging.configure(
      onMessage: onMessage,
      onBackgroundMessage: onBackgroundMessage,
      onLaunch: onLaunch,
      onResume: onMessage,
    );
  }

  static Future<dynamic> onBackgroundMessage(
      Map<String, dynamic> message) async {
    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
    }
    // Or do other work.
  }

  Future<dynamic> onMessage(Map<String, dynamic> message) async {
    print("====== onMessage ====== ");
    print('message: $message');
    // Or do other work
  }

  Future<dynamic> onLaunch(Map<String, dynamic> message) async {
    print("====== onLaunch ====== ");
    print('message: $message');
    // Or do other work
  }

  Future<dynamic> onResume(Map<String, dynamic> message) async {
    print("====== onMessage ====== ");
    print('message: $message');
    // Or do other work
  }
}
