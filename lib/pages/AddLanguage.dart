import 'package:autoprocfinal/main.dart';
import 'package:flutter/material.dart';
import 'package:autoprocfinal/localization/locals.dart';
import 'package:flutter_localization/flutter_localization.dart';

class AddLanguage extends StatefulWidget {
  const AddLanguage({super.key});

  @override
  State<AddLanguage> createState() => _AddLanguageState();
}

class _AddLanguageState extends State<AddLanguage> {
  late String _currentLocale;
  late FlutterLocalization _flutterLocalization;

  @override
  void initState() {
    super.initState();
    _currentLocale = FlutterLocalization.instance.currentLocale!.languageCode;
    _flutterLocalization = FlutterLocalization.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocale.title.getString(context)),
        actions: [
          DropdownButton(
            value: _currentLocale,
            items: [
              DropdownMenuItem(
                value: 'en',
                child: Text('English'),
              ),
              DropdownMenuItem(
                value: 'ja',
                child: Text('Japanese'),
              ),
              // Make sure to provide unique values for each language
              DropdownMenuItem(
                value: 'fr',
                child: Text('French'),
              ),
            ],
            onChanged: (value) {
              _setLocale(value as String?);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
           
            child: Text(
                    (context.formatString(AppLocale.thisIs, ['Ali Abbas',
                  

                  
                    
                    
                    ])),
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  void _setLocale(String? value) {
    if (value == null) return;
    if (value != _currentLocale) {
      _flutterLocalization.translate(value);
      setState(() {
        _currentLocale = value;
      });
    }
  }
}
