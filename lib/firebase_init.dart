import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:ma_for_feip/firebase_options.dart';

// Future<void> firebaseInit() async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//
//   FlutterError.onError = (errorDetails) {
//     FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
//   };
//   PlatformDispatcher.instance.onError = (error, stack) {
//     FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
//     return true;
//   };
// }
