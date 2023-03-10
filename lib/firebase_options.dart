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
    apiKey: 'AIzaSyBDmvJhX4Usj3mnvYCHVRE2cz7Pk3HsEsc',
    appId: '1:583439012104:web:a7bc4d27dc1772f7999cbd',
    messagingSenderId: '583439012104',
    projectId: 'appsmoon',
    authDomain: 'appsmoon.firebaseapp.com',
    storageBucket: 'appsmoon.appspot.com',
    measurementId: 'G-7DLGJ4M45W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyABI69fhxVn-Lzz79p2ZyFYEc9M4tZVW90',
    appId: '1:583439012104:android:bc33ef7301ecd8a2999cbd',
    messagingSenderId: '583439012104',
    projectId: 'appsmoon',
    storageBucket: 'appsmoon.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBosvXQETXboyu6RY2zT-NZ67M444W8Qcs',
    appId: '1:583439012104:ios:12ab8daabb731e79999cbd',
    messagingSenderId: '583439012104',
    projectId: 'appsmoon',
    storageBucket: 'appsmoon.appspot.com',
    iosClientId: '583439012104-9tvd4o7ten8ms9s32tce5qiujj68vfe4.apps.googleusercontent.com',
    iosBundleId: 'com.example.catatanUas',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBosvXQETXboyu6RY2zT-NZ67M444W8Qcs',
    appId: '1:583439012104:ios:12ab8daabb731e79999cbd',
    messagingSenderId: '583439012104',
    projectId: 'appsmoon',
    storageBucket: 'appsmoon.appspot.com',
    iosClientId: '583439012104-9tvd4o7ten8ms9s32tce5qiujj68vfe4.apps.googleusercontent.com',
    iosBundleId: 'com.example.catatanUas',
  );
}
