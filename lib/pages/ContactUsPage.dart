import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 72,
          ),
          Padding(
            padding: const EdgeInsets.only(top:11.0,left: 22,right: 22),
            child: Text(
              "Welcome to the Help and Support interface of our Car Accessories App! We understand that navigating the world of automotive enhancements can be both exciting and challenging. Whether you're a seasoned car enthusiast or a newcomer looking to elevate your vehicle's functionality and style, our dedicated support team is here to assist you every step of the way. In this section, you'll find answers to your questions, troubleshooting tips, and expert guidance to make your experience with our app as smooth as your ride. Feel free to explore our comprehensive resources, and if you can't find what you're looking for, don't hesitate to reach out to our friendly and knowledgeable support team. Your journey to upgrading your car just got easier – let's hit the road together!",
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 68,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 231.0,
            ),
            child: Text(
              "Contect Us",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "aliab7357@gmail.com",
                  style: TextStyle(color: Colors.white),
                )),
            width: 322,
            height: 44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xff4537DD)),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "03251806654",
                  style: TextStyle(color: Colors.white),
                )),
            width: 322,
            height: 44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xff4537DD)),
          )
        ],
      ),
    );
  }
}








class ContactUsPage1 extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  _launchEmail(BuildContext context) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'Ali Abbas',
      path: 'AliAbbas@Gmail.com', // replace with your email
      queryParameters: {
        'subject': 'Contact Us Inquiry',
        'body':
            'Name: ${_nameController.text}\nEmail: ${_emailController.text}\n\n${_messageController.text}',
      },
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name'),
            TextField(controller: _nameController),
            SizedBox(height: 16.0),
            Text('Email'),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'AliAbbas@gmail.com',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Message'),
            TextField(
              controller: _messageController,
              maxLines: 4,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (EmailValidator.validate(_emailController.text)) {
                  _launchEmail(context);
                } else {
                  // Handle invalid email
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Invalid email address'),
                    ),
                  );
                }
              },
              child:  Container(
                  width: 200,
                  decoration: 
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff4537DD)
                  ),
                  child: TextButton(child: Text("Close",style: TextStyle(color: Colors.white),),onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingPage ()));
                  },),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
