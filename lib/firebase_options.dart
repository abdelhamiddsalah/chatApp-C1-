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
    apiKey: 'AIzaSyCbNJpOWwJxglJipSvyo1uXlhmx3KlNBwM',
    appId: '1:490277935928:web:38b8f622b7286084423fcd',
    messagingSenderId: '490277935928',
    projectId: 'chatapp-11dfc',
    authDomain: 'chatapp-11dfc.firebaseapp.com',
    storageBucket: 'chatapp-11dfc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2nklTK_ABy4aNpHoszlR_JbKyGsx3JAw',
    appId: '1:490277935928:android:86085ae25ddf61d7423fcd',
    messagingSenderId: '490277935928',
    projectId: 'chatapp-11dfc',
    storageBucket: 'chatapp-11dfc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEujEEov3hg0WUYP74sHPCuEN0XydEKow',
    appId: '1:490277935928:ios:251615f5b6a8caf3423fcd',
    messagingSenderId: '490277935928',
    projectId: 'chatapp-11dfc',
    storageBucket: 'chatapp-11dfc.appspot.com',
    iosBundleId: 'com.example.chatt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEujEEov3hg0WUYP74sHPCuEN0XydEKow',
    appId: '1:490277935928:ios:251615f5b6a8caf3423fcd',
    messagingSenderId: '490277935928',
    projectId: 'chatapp-11dfc',
    storageBucket: 'chatapp-11dfc.appspot.com',
    iosBundleId: 'com.example.chatt',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCbNJpOWwJxglJipSvyo1uXlhmx3KlNBwM',
    appId: '1:490277935928:web:128a49eb75494a33423fcd',
    messagingSenderId: '490277935928',
    projectId: 'chatapp-11dfc',
    authDomain: 'chatapp-11dfc.firebaseapp.com',
    storageBucket: 'chatapp-11dfc.appspot.com',
  );
}
