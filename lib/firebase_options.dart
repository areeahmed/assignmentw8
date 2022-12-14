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
        return macos;
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
    apiKey: 'AIzaSyCV8Ukl8YfEr1Ggv71itYVA9ia-cJq9eU0',
    appId: '1:135494732082:web:e1b217806b361ee5386f2b',
    messagingSenderId: '135494732082',
    projectId: 'test-7fcf1',
    authDomain: 'test-7fcf1.firebaseapp.com',
    databaseURL: 'https://test-7fcf1-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-7fcf1.appspot.com',
    measurementId: 'G-9RY2E427T3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDG2wfi4Uxx9fqQHBwZ_PF2-1kP1ZqaOf4',
    appId: '1:135494732082:android:720f51e5468f4d39386f2b',
    messagingSenderId: '135494732082',
    projectId: 'test-7fcf1',
    databaseURL: 'https://test-7fcf1-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-7fcf1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZEO2CKHevMmVyzKioypIGr0-SmF8L9LY',
    appId: '1:135494732082:ios:0294c44abba7b269386f2b',
    messagingSenderId: '135494732082',
    projectId: 'test-7fcf1',
    databaseURL: 'https://test-7fcf1-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-7fcf1.appspot.com',
    iosClientId: '135494732082-81eppurefhhrqtqjcakfl850rbbh6j03.apps.googleusercontent.com',
    iosBundleId: 'com.example.assignmentw8',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCZEO2CKHevMmVyzKioypIGr0-SmF8L9LY',
    appId: '1:135494732082:ios:0294c44abba7b269386f2b',
    messagingSenderId: '135494732082',
    projectId: 'test-7fcf1',
    databaseURL: 'https://test-7fcf1-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-7fcf1.appspot.com',
    iosClientId: '135494732082-81eppurefhhrqtqjcakfl850rbbh6j03.apps.googleusercontent.com',
    iosBundleId: 'com.example.assignmentw8',
  );
}
