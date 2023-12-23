import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Padding(
        padding: EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Welcome to AutoPro!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'About Us:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'The  ultimate destination for automotive enthusiasts and drivers alike! Get ready to revamp your ride and elevate your driving experience with our cutting-edge car accessories store app. Whether youre a seasoned gearhead or simply looking to enhance the style, comfort, or performance of your vehicle, weve got you covered. Explore a wide range of premium accessories, from sleek exterior upgrades to state-of-the-art tech gadgets, all designed to make your journey on the road smoother, safer, and more enjoyable',
            ),
            SizedBox(height: 16.0),
            Text(
              'Contact Us:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Email: aliab7357@gmail.com',
            ),
            Text(
              'Phone: +92 3251806654',
            ),
            SizedBox(
              height: 84,
            ),
            Center(
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff4537DD)),
                child: TextButton(
                  child: Text(
                    "Close",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SettingPage()));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
