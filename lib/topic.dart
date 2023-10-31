import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class TopicSubscriptionScreen extends StatefulWidget {
  const TopicSubscriptionScreen({super.key});

  @override
  State<TopicSubscriptionScreen> createState() =>
      _TopicSubscriptionScreenState();
}

class _TopicSubscriptionScreenState extends State<TopicSubscriptionScreen> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final List<String> sports = ['football', 'basketball', 'tennis'];
  Set<String> selectedSports = {};

  @override
  void initState() {
    super.initState();

    // When the app is in the foreground and receives a notification.
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   print('Message received when the app is in the foreground:');
    //   print('Title: ${message.notification?.title}');
    //   print('Body: ${message.notification?.body}');

      // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      //   RemoteNotification? notification = message.notification;
      //   AndroidNotification? android = message.notification?.android;
      //
      //   // If `onMessage` is triggered with a notification, we display a dialog with the notification details.
      //   if (notification != null && android != null) {
      //     showDialog(
      //       context: context,
      //       builder: (BuildContext context) {
      //         return AlertDialog(
      //           title: Text(notification.title ?? ''),
      //           content: SingleChildScrollView(
      //             child: ListBody(
      //               children: [Text(notification.body ?? '')],
      //             ),
      //           ),
      //           actions: [
      //             TextButton(
      //               child: const Text('OK'),
      //               onPressed: () {
      //                 Navigator.of(context).pop();
      //               },
      //             ),
      //           ],
      //         );
      //       },
      //     );
      //   }
      // });
    // });
    // When the user taps on a notification and the app is opened.
    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    //   print('Message opened from system tray:');
    //   print('Title: ${message.notification?.title}');
    //   print('Body: ${message.notification?.body}');
    //
    //   // Add any additional logic for handling the opened notification.
    // });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sports.length,
      itemBuilder: (context, index) {
        final sport = sports[index];
        return CheckboxListTile(
          title: Text(sport),
          value: selectedSports.contains(sport),
          onChanged: (bool? value) {
            if (value == true) {
              _firebaseMessaging.subscribeToTopic(sport);
              selectedSports.add(sport);
            } else {
              _firebaseMessaging.unsubscribeFromTopic(sport);
              selectedSports.remove(sport);
            }
            setState(() {});
          },
        );
      },
    );
  }
}