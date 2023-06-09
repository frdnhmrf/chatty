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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBPwyA_F4T_5EXb0KhM0I0gUe_qlRBNFds',
    appId: '1:638656908429:android:9648f2afcd0cac9dc9a6c4',
    messagingSenderId: '638656908429',
    projectId: 'flutter-video-audio-chat-8bc0e',
    storageBucket: 'flutter-video-audio-chat-8bc0e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDAm3NGjTyRDg_5MNAA5FgcD2LeXAfLILQ',
    appId: '1:638656908429:ios:0c44d9908648e695c9a6c4',
    messagingSenderId: '638656908429',
    projectId: 'flutter-video-audio-chat-8bc0e',
    storageBucket: 'flutter-video-audio-chat-8bc0e.appspot.com',
    iosClientId: '638656908429-bdmsjfdf7kq7lg690rl1h6a4lc32sasc.apps.googleusercontent.com',
    iosBundleId: 'com.dbestech.chatty',
  );
}
