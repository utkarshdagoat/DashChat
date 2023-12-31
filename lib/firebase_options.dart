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
    apiKey: 'AIzaSyCFksP2jhms1lV5yEe-FKHD8wMo0PpF5Cs',
    appId: '1:996800622500:web:a12bcaf6a3c83ff8791b31',
    messagingSenderId: '996800622500',
    projectId: 'dashchat-d5e79',
    authDomain: 'dashchat-d5e79.firebaseapp.com',
    storageBucket: 'dashchat-d5e79.appspot.com',
    measurementId: 'G-CV81S1BRDM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUftlqGQZd7u2ungzBo_BvE--zH7kk9Rw',
    appId: '1:996800622500:android:e434d2ec09582fbc791b31',
    messagingSenderId: '996800622500',
    projectId: 'dashchat-d5e79',
    storageBucket: 'dashchat-d5e79.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkOOrcXGZpdRJo7IYjdQ_Nmy1UJwhquZU',
    appId: '1:996800622500:ios:bd92a1203b2e5a69791b31',
    messagingSenderId: '996800622500',
    projectId: 'dashchat-d5e79',
    storageBucket: 'dashchat-d5e79.appspot.com',
    iosClientId: '996800622500-81kuk1be19drrkm967m7n45g38f05nf8.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagram',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkOOrcXGZpdRJo7IYjdQ_Nmy1UJwhquZU',
    appId: '1:996800622500:ios:335953f077af1ae6791b31',
    messagingSenderId: '996800622500',
    projectId: 'dashchat-d5e79',
    storageBucket: 'dashchat-d5e79.appspot.com',
    iosClientId: '996800622500-5dh2o1u3d19o7l850ajkjk8tijsdf2sv.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagram.RunnerTests',
  );
}
