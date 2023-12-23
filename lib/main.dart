import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:autoprocfinal/localization/locals.dart';
import 'package:autoprocfinal/pages/Reistration.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:location/location.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterLocalization _localization = FlutterLocalization.instance;

  @override
  void initState() {
    _configureLocalization(); // Call the method to configure localization
    super.initState();
  }

  void _configureLocalization() {
    _localization.init(
      mapLocales: [
        const MapLocale(
          'en',
          AppLocale.EN,
          countryCode: 'US',
        ),
        const MapLocale(
          'km',
          AppLocale.KM,
          countryCode: 'KH',
        ),
        const MapLocale(
          'ja',
          AppLocale.JA,
          countryCode: 'JP',
        ),
      ],
      initLanguageCode: 'en',
    );
    _localization.onTranslatedLanguage = _onTranslatedLanguage;
  }

  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      supportedLocales: _localization.supportedLocales,
      localizationsDelegates: _localization.localizationsDelegates,
      home: (FirebaseAuth.instance.currentUser != null)
          ? HomeWel()
          : LoginPage(),
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
    Timer(Duration(seconds: 2), () {
      // Navigate to the main screen after the splash screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PurpleScreen()),
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
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PurpleScreen extends StatefulWidget {
  const PurpleScreen({super.key});

  @override
  State<PurpleScreen> createState() => _PurpleScreenState();
}

class _PurpleScreenState extends State<PurpleScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay to show the splash screen for a few seconds
    Timer(Duration(seconds: 1), () {
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

mixin AppLocale {
  static const String title = 'title';
  static const String thisIs = 'thisIs';

  static const Map<String, dynamic> EN = {
    title: 'Localization',
    thisIs: 'Welcome Sir ,.',
  };
  static const Map<String, dynamic> KM = {
    title: 'ការធ្វើមូលដ្ឋានីយកម្ម',
    thisIs: 'នេះគឺជាកញ្ចប់%a កំណែ%a.',
  };
  static const Map<String, dynamic> JA = {
    title: 'ローカリゼーション',
    thisIs: 'これは%aパッケージ、バージョン%aです。',
  };
}
