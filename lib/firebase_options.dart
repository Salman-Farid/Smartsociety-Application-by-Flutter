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
    apiKey: 'AIzaSyDkI7NrHMrsCOEBkhD6mXDG_0Mzb373ZLo',
    appId: '1:161934143519:web:a5d17a286c6c350b26e52a',
    messagingSenderId: '161934143519',
    projectId: 'smartsociety-db62f',
    authDomain: 'smartsociety-db62f.firebaseapp.com',
    storageBucket: 'smartsociety-db62f.appspot.com',
    measurementId: 'G-KPKF87QC5K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBRFGEr4cZIu_ZmCmVMPVCrBvpf1dcYSNE',
    appId: '1:161934143519:android:fa88e7d768d8410826e52a',
    messagingSenderId: '161934143519',
    projectId: 'smartsociety-db62f',
    storageBucket: 'smartsociety-db62f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1iwcq6FyfuJztOyYmnRMiRLniUUK8BUI',
    appId: '1:161934143519:ios:149246b9da90f71e26e52a',
    messagingSenderId: '161934143519',
    projectId: 'smartsociety-db62f',
    storageBucket: 'smartsociety-db62f.appspot.com',
    iosBundleId: 'com.example.smartsociety',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD1iwcq6FyfuJztOyYmnRMiRLniUUK8BUI',
    appId: '1:161934143519:ios:149246b9da90f71e26e52a',
    messagingSenderId: '161934143519',
    projectId: 'smartsociety-db62f',
    storageBucket: 'smartsociety-db62f.appspot.com',
    iosBundleId: 'com.example.smartsociety',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDkI7NrHMrsCOEBkhD6mXDG_0Mzb373ZLo',
    appId: '1:161934143519:web:8b4fc34f2bb934b526e52a',
    messagingSenderId: '161934143519',
    projectId: 'smartsociety-db62f',
    authDomain: 'smartsociety-db62f.firebaseapp.com',
    storageBucket: 'smartsociety-db62f.appspot.com',
    measurementId: 'G-Q11FWNP2YN',
  );
}