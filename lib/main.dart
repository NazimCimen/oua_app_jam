import 'package:appjam/firebase_options.dart';
import 'package:appjam/modules/auth/views/login_view.dart';
import 'package:appjam/modules/auth/views/splash_screen_view.dart';
import 'package:appjam/modules/home/views/home_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: LoginPage(),
    );
  }
}
