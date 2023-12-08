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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22.0, left: 22, right: 22),
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text("Street 1"),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text("Street 2"),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text("House No:"),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text("City"),
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
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
                  children: [
                    Text("Block No."),
                    Container(
                      width: 148,
                      child: TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Block No."),
                    Container(
                      width: 148,
                      child: TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
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
              padding: const EdgeInsets.only(top: 4.0),
              child: Text("Postal Code"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 22, right: 22),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xff4537DD),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UserProfile()));
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
