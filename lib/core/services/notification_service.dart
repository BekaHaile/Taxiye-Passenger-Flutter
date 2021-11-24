/*
  Handles showing notifications
*/
import 'dart:convert';
import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as lNotification;
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:get/get.dart';

class NotificationService extends GetxService {
  // Todo: configure any notification services here.

  final FirebaseMessaging messaging;

  NotificationService({required this.messaging});

  registerFCM(
      {required Function(NotificationMessage notificationMessage)
          onMessageRecieved}) async {
    // NotificationSettings settings = await messaging.requestPermission(
    //   alert: true,
    //   announcement: false,
    //   badge: true,
    //   carPlay: false,
    //   criticalAlert: false,
    //   provisional: false,
    //   sound: true,
    // );

    configLocalNotification();

    //For Foreground messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // print('Got notification message on foreground:  ${message.data['message']}');
      handleNotification(message, onMessageRecieved);
    });

    //for background messages
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Save the initial token to the database
    // await saveTokenToDatabase(token);
    // Any time the token refreshes, store this in the database too.
    // messaging.onTokenRefresh.listen(updateFcmToken);
  }

  void configLocalNotification() {
    final flutterLocalNotificationsPlugin =
        lNotification.FlutterLocalNotificationsPlugin();

    const initializationSettingsAndroid =
        lNotification.AndroidInitializationSettings('app_icon');

    const initializationSettingsIOS = lNotification.IOSInitializationSettings();

    const lNotification.InitializationSettings initializationSettings =
        lNotification.InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS);

    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String? payload) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');
    } else {
      // Navigate appropriateley
      print(payload);
    }
    // await Navigator.push(
    //   context,
    //   MaterialPageRoute<void>(builder: (context) => SecondScreen(payload)),
    // );
  }

  // Saving Tokens
  // Future<void> updateFcmToken(String? token) async {
  //   String? userId = firebaseAuth.currentUser?.uid;

  //   if (userId != null && token != null) {
  //     String deviceId = await getDeviceId(userId);
  //     return await FirebaseFirestore.instance
  //         .collection('status')
  //         .doc(userId)
  //         .update({
  //       'tokens.$deviceId': token,
  //     });
  //   }
  // }
}

handleNotification(RemoteMessage message,
    Function(NotificationMessage notificationMessage) onMessageRecieved) {
  if (message.data['message'] != null) {
    NotificationMessage notificationMessage =
        NotificationMessage.fromJson(jsonDecode(message.data['message']));

    // send recieved data to the callback
    onMessageRecieved(notificationMessage);

    // show recieved notification to the user
    switch (notificationMessage.flag) {
      case 4:
        showNotification(
          'ride_completed'.tr,
          '${'your_fare_was'.tr} ${(notificationMessage.toPay ?? '')} ETB',
        );
        break;
      case 5:
        break;
      default:
        showNotification(
          notificationMessage.title ?? '',
          notificationMessage.message ??
              notificationMessage.log ??
              notificationMessage.error ??
              '',
        );
    }
  }

  // original notifications
  // RemoteNotification? notification = message.notification;
  // AndroidNotification? android = message.notification?.android;

  // if (notification != null && android != null) {
  //   print('notification is not null');
  //   Platform.isAndroid
  //       ? showNotification(notification)
  //       : showNotification(notification);
  //   // FlutterLocalNotificationsPlugin().show(
  //   //     notification.hashCode,
  //   //     notification.title,
  //   //     notification.body,
  //   //     NotificationDetails(
  //   //       android: AndroidNotificationDetails(
  //   //         channel.id,
  //   //         channel.name,
  //   //         channel.description,
  //   //         icon: android?.smallIcon,
  //   //         // other properties...
  //   //       ),
  //   //     ));
  // } else {
  //   print('notification is null');
  // }
}

showNotification(String title, String body) async {
  final GetStorage _storage = GetStorage();

  // check if notification is enabled for different notification types

  bool? showRideNotifications = _storage.read<bool>('showRideNotifications');
  bool? showDeliveryNotifications =
      _storage.read<bool>('showDeliveryNotifications');
  bool? showTransactionNotifications =
      _storage.read<bool>('showTransactionNotifications');

  var androidPlatformChannelSpecifics =
      const lNotification.AndroidNotificationDetails(
    'com.taxiye',
    'Taxiye',
    'Notificaion from Taxiye',
    playSound: true,
    enableVibration: true,
    importance: lNotification.Importance.max,
    priority: lNotification.Priority.high,
    styleInformation: lNotification.BigTextStyleInformation(''),
  );
  var iOSPlatformChannelSpecifics =
      const lNotification.IOSNotificationDetails();
  var platformChannelSpecifics = lNotification.NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics);

  // Todo: check notification type from body

  if (showRideNotifications ?? true) {
    await lNotification.FlutterLocalNotificationsPlugin().show(
      0,
      title,
      body,
      platformChannelSpecifics,
      // payload: json.encode(message),
    );
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  // print('Got notification message on background:: ${message.data['message']}');

  handleNotification(message, persistBackgroundNotification);
}

persistBackgroundNotification(NotificationMessage notificationMessage) async {
  // set notification message on storage, so that app will read it on
  // onResume.

  switch (notificationMessage.flag) {
    case 72:
      // skip this notification
      break;
    default:
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('rideNotification', jsonEncode(notificationMessage));
  }

  // For communication with the main ui thread.
  // final SendPort? send =
  //     IsolateNameServer.lookupPortByName('background_ride_notification')
  // send?.send(notificationMessage);
}
