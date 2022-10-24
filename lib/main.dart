import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/home.dart';
import 'package:my_app/phone.dart';
// import 'package:my_app/verify.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    initialRoute: 'phone',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => PhonePage(),
      // 'verify': (context) => MyVerify()
      // 'home': (context) => MyHome(),
    },
  ));
}
