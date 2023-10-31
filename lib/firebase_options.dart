// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA6QPfp_AlQSgjlSTPSHraABqJp3d8332g',
    appId: '1:887025698166:web:e3b463512a1ea40119e657',
    messagingSenderId: '887025698166',
    projectId: 'notifications-73114',
    authDomain: 'notifications-73114.firebaseapp.com',
    storageBucket: 'notifications-73114.appspot.com',
    measurementId: 'G-73ZF4D58KY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB572Wk9Kt_cucbRe6Tq-0UKAECii87j7Y',
    appId: '1:887025698166:android:d9783f180aeb179519e657',
    messagingSenderId: '887025698166',
    projectId: 'notifications-73114',
    storageBucket: 'notifications-73114.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDSa00KsuToh9qYb4ykkiaJqmokeCq62ro',
    appId: '1:887025698166:ios:060eb9bad75998dd19e657',
    messagingSenderId: '887025698166',
    projectId: 'notifications-73114',
    storageBucket: 'notifications-73114.appspot.com',
    iosBundleId: 'com.example.p2Notifications',
  );
}