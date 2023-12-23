import 'package:autoprocfinal/pages/AboutUsPage.dart';
import 'package:autoprocfinal/pages/AddAdressInfo.dart';
import 'package:autoprocfinal/pages/AddCountrySetting.dart';
import 'package:autoprocfinal/pages/AddLanguage.dart';
import 'package:autoprocfinal/pages/AddPaymetPAge.dart';
import 'package:autoprocfinal/pages/Cart_Message_accountPage.dart';
import 'package:autoprocfinal/pages/ContactUsPage.dart';
import 'package:autoprocfinal/pages/CountryAdd.dart';
import 'package:autoprocfinal/pages/HelpPage.dart';
import 'package:autoprocfinal/pages/Logout.dart';
import 'package:autoprocfinal/pages/PersonalPage.dart';
import 'package:autoprocfinal/pages/PollicyPage.dart';
import 'package:autoprocfinal/pages/PrivacySecurityPage.dart';
import 'package:autoprocfinal/pages/RatingReviewPage.dart';
import 'package:autoprocfinal/pages/Reistration.dart';
import 'package:autoprocfinal/pages/ResetPassPage.dart';
import 'package:autoprocfinal/pages/YourOrderPage.dart';
import 'package:autoprocfinal/pages/add_country_page.dart';
import 'package:autoprocfinal/pages/countryAddS.dart';
import 'package:autoprocfinal/pages/mainHomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  Future<void> _pickImage() async {
    final picker = ImagePicker();
  }

  Future<void> _pickImage2() async {
    final picker = ImagePicker();
    //  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    // if (pickedFile != null) {
    // Do something with the picked image file
    //File image = File(pickedFile.path);
    // You can use the 'image' variable to display the image or perform further operations
    // For example, you can use Image.file(image) to display the image.
    // Image.file(image),
    // }
  }

  void logout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.popUntil(context, (route) => route.isFirst);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogoutPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff4537DD),
                    borderRadius: BorderRadius.circular(22)),
                width: 99,
                child: TextButton(
                    onPressed: () {
                      logout();
                    },
                    child: Text(
                      "Logout",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 99,
                      height: 119,
                      child: Stack(
                        children: [
                          Container(
                            width: 99,
                            height: 119,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/autopro/aliabbas.png'),
                              //   foregroundImage: AssetImage('assets/autopro/aliabbas.png',),
                            ),
                          ),
                          Positioned(
                              bottom: -3,
                              left: 51,
                              child: IconButton(
                                onPressed: _pickImage2,
                                icon: Icon(Icons.add_a_photo),
                              ))
                        ],
                      )),
                  Container(
                    width: 250,
                    height: 112,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
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
                          "Ali Abbas",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
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
                ],
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 32.0, right: 22),
              child: Container(
                width: 333,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PersonalPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Personal Information",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PersonalPage()));
                                },
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Change Password",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ResetPage()));
                              },
                              icon: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Privacy/Security",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PrivacyPage()));
                                },
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddPayment()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Add Payment Method",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AddPayment()));
                                },
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddAdressInfo()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Address Information",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AddAdressInfo()));
                                },
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderPlacePage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Your Order",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OrderPlacePage()));
                                },
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Language",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 33.0),
                                child: Text("English"),
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddLanguage()));
                              },
                              icon: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddCSCPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Country",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AddCSCPage()));
                                },
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PolicyPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Policies",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RatingReviewPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ratings And Reviews",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RatingReviewPage()));
                                },
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutUsPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "About Us",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AboutUsPage()));
                                },
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Contact Us",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ContactUsPage1()));
                              },
                              icon: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HelpPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Help",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HelpPage()));
                                },
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
