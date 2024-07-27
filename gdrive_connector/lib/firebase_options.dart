// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyC52B_F405eEIwOehR5IwqaCGaTk24rcj0',
    appId: '1:919759016436:web:4c44eac48c3d4f6f57a9a1',
    messagingSenderId: '919759016436',
    projectId: 'gdrive-connector-a0e8c',
    authDomain: 'gdrive-connector-a0e8c.firebaseapp.com',
    storageBucket: 'gdrive-connector-a0e8c.appspot.com',
    measurementId: 'G-6K7XZY9N62',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDh9asdUOWmXbSfZ6ALb7EpWwWPfzZ_Nzk',
    appId: '1:919759016436:android:d02d59087082958b57a9a1',
    messagingSenderId: '919759016436',
    projectId: 'gdrive-connector-a0e8c',
    storageBucket: 'gdrive-connector-a0e8c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBOWB-KKQopbQqXggoLdSzN99VtT6IZwL8',
    appId: '1:919759016436:ios:d8b8b71b21dabfdb57a9a1',
    messagingSenderId: '919759016436',
    projectId: 'gdrive-connector-a0e8c',
    storageBucket: 'gdrive-connector-a0e8c.appspot.com',
    iosClientId: '919759016436-dqv8t7212too0lntsau8e6hqmao84h34.apps.googleusercontent.com',
    iosBundleId: 'com.example.gdriveConnector',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBOWB-KKQopbQqXggoLdSzN99VtT6IZwL8',
    appId: '1:919759016436:ios:d8b8b71b21dabfdb57a9a1',
    messagingSenderId: '919759016436',
    projectId: 'gdrive-connector-a0e8c',
    storageBucket: 'gdrive-connector-a0e8c.appspot.com',
    iosClientId: '919759016436-dqv8t7212too0lntsau8e6hqmao84h34.apps.googleusercontent.com',
    iosBundleId: 'com.example.gdriveConnector',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC52B_F405eEIwOehR5IwqaCGaTk24rcj0',
    appId: '1:919759016436:web:8e9a5c685340a50457a9a1',
    messagingSenderId: '919759016436',
    projectId: 'gdrive-connector-a0e8c',
    authDomain: 'gdrive-connector-a0e8c.firebaseapp.com',
    storageBucket: 'gdrive-connector-a0e8c.appspot.com',
    measurementId: 'G-0P38QDHGHZ',
  );
}
