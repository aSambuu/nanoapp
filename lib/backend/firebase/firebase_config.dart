import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCalrqdHqFiTQ0ne_zEHcCnv6lTOH2uBtw",
            authDomain: "elinefb-1b217.firebaseapp.com",
            projectId: "elinefb-1b217",
            storageBucket: "elinefb-1b217.appspot.com",
            messagingSenderId: "101817433546",
            appId: "1:101817433546:web:6d84bf7c9d2f0616ec2333",
            measurementId: "G-H9QEM6RE33"));
  } else {
    await Firebase.initializeApp();
  }
}
