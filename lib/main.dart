import 'package:animated_text_kit/animated_text_kit.dart';


import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:autoprocfinal/help/allhomeNav.dart';
import 'package:autoprocfinal/pages/Page_start.dart';
import 'package:autoprocfinal/pages/WlHome.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay to show the splash screen for a few seconds
    Timer(Duration(seconds: 3), () {
      // Navigate to the main screen after the splash screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => purpleScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 152,
          height: 152,
          child: CircleAvatar(
            backgroundColor: Color(0xFF4537DD),
            child: Center(
              child: Text(
                'Auto Pro',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ), // Replace with your splash screen content
      ),
    );
  }
}

class purpleScreen extends StatefulWidget {
  const purpleScreen({super.key});

  @override
  State<purpleScreen> createState() => _purpleScreenState();
}

class _purpleScreenState extends State<purpleScreen> {
  void initState() {
    super.initState();
    // Simulate a delay to show the splash screen for a few seconds
    Timer(Duration(seconds: 2), () {
      // Navigate to the main screen after the splash screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => StartPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4537DD),
    );
  }
}
