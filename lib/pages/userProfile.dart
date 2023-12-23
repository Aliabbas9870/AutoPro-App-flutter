import 'package:autoprocfinal/pages/welcomePage.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 123,
            ),
            Center(
                child: Container(
              width: 277,
              child: Text(
                "Congrats ! Your profile is set and good to go!",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )),
            SizedBox(
              height: 72,
            ),
            Container(
                width: 200,
                height: 115,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/autopro/person.png"),
                )),
            SizedBox(
              height: 32,
            ),
            Container(
              width: 270,
              height: 122,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffF2F2F6), Color(0xff4537DD)],
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ali Haider",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Anjalina Joulie California,USA",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 121,
            ),
            Container(
                width: 260,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(11),
                  color: Color(0xff4537DD),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WelcomePage()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        ),
      ),
    );
  }
}
