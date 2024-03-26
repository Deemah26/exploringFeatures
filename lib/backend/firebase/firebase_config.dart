import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC0dN8A4NmfnMc2Dyw9RKCK9pD_9b9tMBY",
            authDomain: "elite1events-oz35fz.firebaseapp.com",
            projectId: "elite1events-oz35fz",
            storageBucket: "elite1events-oz35fz.appspot.com",
            messagingSenderId: "403274828355",
            appId: "1:403274828355:web:e8cc436358ec732356a2f6"));
  } else {
    await Firebase.initializeApp();
  }
}
