import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class sharepref extends StatelessWidget {
  const sharepref({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Shared Preferences Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final TextEditingController _nameController = TextEditingController();
  String _savedName = '';

  @override
  void initState() {
    super.initState();
    _loadSavedName();
  }

  _loadSavedName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedName = prefs.getString('name') ?? '';
    });
  }

  _saveName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', _nameController.text);
    _loadSavedName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Enter your name'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _saveName();
              },
              child: const Text('Save Name'),
            ),
            const SizedBox(height: 16),
            Text(
              'Top Profile Name: $_savedName',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}