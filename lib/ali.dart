
















// import 'package:autoprocfinal/main.dart';
// import 'package:flutter/material.dart';
// import 'package:autoprocfinal/localization/locals.dart';
// import 'package:intl/intl.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_localization/flutter_localization.dart';

// class AddLanguage extends StatefulWidget {
//   const AddLanguage({Key? key}) : super(key: key);

//   @override
//   _AddLanguageState createState() => _AddLanguageState();
// }

// class _AddLanguageState extends State<AddLanguage> {
//   late String _currentLocale;
//   late FlutterLocalization _flutterLocalization;

//   @override
//   void initState() {
//     super.initState();
//     _initLocale();
//   }

//   // Initialize the current locale from shared preferences
//   Future<void> _initLocale() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     _currentLocale = prefs.getString('locale') ?? 'en';

//     setState(() {
//       _flutterLocalization = FlutterLocalization.instance;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(AppLocale.title.getString(context)),
//         actions: [
//           DropdownButton(
//             value: _currentLocale,
//             items: [
//               DropdownMenuItem(
//                 value: 'en',
//                 child: Text('English'),
//               ),
//               DropdownMenuItem(
//                 value: 'ja',
//                 child: Text('Japanese'),
//               ),
//               DropdownMenuItem(
//                 value: 'fr',
//                 child: Text('French'),
//               ),
//             ],
//             onChanged: (value) {
//               _setLocale(value as String?);
//             },
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Text(' ali abbbas cs ', style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
//             Center(
//               child: Container(
//                 width: 221,
//                 height: 237,
//                 child: Text(
//                   (context.formatString(Locale, ['Ali Abbas'])),
//                   style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> _setLocale(String? value) async {
//     if (value == null) return;

//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('locale', value);

//     setState(() {
//       _currentLocale = value;

//       // Call the method to change the locale and re-render the app
//       _changeLocale(value);
//     });
//   }

//   void _changeLocale(String localeCode) {

//     Locale newLocale = Locale(localeCode);
  
// //    AppLocale.load(newLocale); // Assume AppLocale.load sets the locale
//     Intl.defaultLocale = newLocale.languageCode;

//     // Call setState to rebuild the UI with the new language
//     setState(() {});
//   }
// }
