import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyB2yugJ7II7a_Z5LnpHbX3lEgCSoK-xi8w",
        authDomain: "gen-lang-client-0934798565.firebaseapp.com",
        projectId: "gen-lang-client-0934798565",
        storageBucket: "gen-lang-client-0934798565.firebasestorage.app",
        messagingSenderId: "821831278136",
        appId: "1:821831278136:web:69dd357f0b253e7aef10cd",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
}
