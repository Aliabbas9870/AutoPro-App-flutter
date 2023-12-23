import 'package:autoprocfinal/pages/WlHome.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class PhoneAuthScreen extends StatefulWidget {
  @override
  _PhoneAuthScreenState createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String _verificationId;

  void _signInWithPhoneNumber(String smsCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: _verificationId,
      smsCode: smsCode,
    );

    try {
      UserCredential authResult = await _auth.signInWithCredential(credential);
      User? user = authResult.user;
      print("Phone number verified and signed in: ${user?.phoneNumber}");
    } catch (e) {
      print("Error signing in with phone number: $e");
    }
  }

  TextEditingController phoneController = TextEditingController();
  void sendOTP() async {
    String phone = '+92' + phoneController.text.trim();

    await FirebaseAuth.instance.verifyPhoneNumber(
        verificationCompleted: (credential) {},
   
        verificationFailed: (ex) {},
        codeSent: (verificationId, resentToken) {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeWel()));
        },
        codeAutoRetrievalTimeout: (verificationId) {},
        timeout: Duration(seconds: 30));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Replace 'your_phone_number' with the actual phone number
              },
              child: Text('Send Verification Code'),
            ),
            SizedBox(height: 16),
            TextField(
              onChanged: (value) {
                // Store the entered SMS code
              },
              decoration: InputDecoration(
                hintText: 'Enter SMS Code',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Replace 'entered_sms_code' with the actual entered SMS code
                _signInWithPhoneNumber('entered_sms_code');
              },
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
