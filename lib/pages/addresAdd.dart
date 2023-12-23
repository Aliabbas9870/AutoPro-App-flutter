import 'package:autoprocfinal/pages/userProfile.dart';
import 'package:flutter/material.dart';

class AddAdres extends StatelessWidget {
  const AddAdres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Address Information",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22.0, left: 22, right: 22),
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Street 1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text("Street 2",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text("House No:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text("City",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Block No.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
                    Container(
                      width: 148,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("State",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
                    Container(
                      width: 148,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, right: 255),
              child: Text(
                "Postal Code",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 22, right: 22),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Color(0xff4537DD),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserProfile()));
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        ),
      ),
    );
  }
}
