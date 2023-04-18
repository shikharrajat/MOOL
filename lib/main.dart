import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mool/screens/splash_screen.dart';
import 'package:mool/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

        home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot) => snapshot.hasData
    ? const homescreen()
        : const   homescreen(),
    ),
    );
  }
}
