import 'package:autoprocfinal/help/addNavigate.dart';
import 'package:autoprocfinal/operations/formPage.dart';
import 'package:autoprocfinal/pages/RatingReviewPage.dart';
import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:autoprocfinal/pages/allScreenPage.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>OperationPage()));
          }, icon: Icon(Icons.edit_note_sharp))
        ],
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
              ),
              child: Container(
                  width: 49,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Color(0xff4537DD),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                      child: Text(
                    'All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ))),
            ),
            SizedBox(
              width: 32,
            ),
            Container(
                width: 75,
                height: 32,
                decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  'pending',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ))),
            SizedBox(
              width: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 33.0),
              child: Container(
                  width: 75,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                      child: Text(
                    'To ship',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ))),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Container(
                width: 313,
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(44),
                          borderSide: BorderSide(color: Colors.black26))),
                ),
              ),
            ),
            Container(
                width: 44,
                height: 55,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 33,
                    )))
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Text("No order available")
      ]),
    );
  }
}

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
              ),
              child: GestureDetector(
                onTap: (){},
                child: Container(
                    width: 49,
                    height: 32,
                    decoration: BoxDecoration(
                        color: Color(0xff4537DD),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: Text(
                      'All',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ))),
              ),
            ),
            SizedBox(
              width: 32,
            ),
            Container(
                width: 75,
                height: 32,
                decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  'read',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ))),
            SizedBox(
              width: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 33.0),
              child: Container(
                  width: 75,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                      child: Text(
                    'unread',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ))),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Container(
                width: 313,
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(44),
                          borderSide: BorderSide(color: Colors.black26))),
                ),
              ),
            ),
            Container(
                width: 44,
                height: 55,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 33,
                    )))
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Text("No message available")
      ]),
    );
  }
}

class MessageDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message Details'),
      ),
      body: Center(
        child: Text('Message Details Screen'),
      ),
    );
  }
}

/// profiles and accounts

class AccountsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4537DD),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                highlightColor: Colors.black,
                hoverColor: Colors.red,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));
                  },
                  icon: Icon(
                    Icons.settings,
                    size: 36,
                    color: Colors.white,
                  )),
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Container(
              width: 122,
              height: 152,
              child: CircleAvatar(
                backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/autopro/aliabbas.png'),
                child: Center(
                  child: Text(
                    ' ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
            Container(
              width: 172,
              height: 33,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Center(
                  child: Text(
                "Ali Abbas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "0",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "My Wishlist",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                height: 448,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70.0),
                    topRight: Radius.circular(70.0),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 22.0, top: 35, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                paymentPage()));
                                  },
                                  icon: Icon(Icons.payment)),
                              Text(
                                "To Pay",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ToShipPage()));
                                  },
                                  icon: Icon(Icons.send)),
                              Text(
                                "To Ship",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ToReceivePage()));
                                  },
                                  icon: Icon(Icons.call_received)),
                              Text(
                                "To Receive",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ToReviewPage()));
                                  },
                                  icon: Icon(Icons.reviews_outlined)),
                              Text(
                                "To Review",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 27.0, left: 32, right: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyReturn()));
                                  },
                                  icon: Icon(Icons.keyboard_return_rounded)),
                              Text(
                                "My Returns",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyCancel()));
                                  },
                                  icon: Icon(Icons.cancel_presentation_sharp)),
                              Text(
                                "My Cancellations",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 38,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 236.0),
                      child: Text("My Services",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 42,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MessagePage()));
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.message),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          "My Messeges",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 22,
                              ),
                              GestureDetector(
                                onTap: (){
                                  _showSnackBar(context);
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.favorite),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "My Favourits",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: (){

                                        Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RatingReviewPage()));
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.reviews_outlined),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          "My Reviews",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 22,
                              ),
                              GestureDetector(
                                onTap: (){
                                  _showSnackBar(context);
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.help_center_outlined),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "Help Centre",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  




  
  void _showSnackBar(BuildContext context) {
    // Create a SnackBar
    final snackBar = SnackBar(
      content: Text('Page Not Availabe Now ! Sorry'),
      duration: Duration(seconds: 3), // Optional: Set the duration
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Perform some action when the "Undo" button is pressed
          // For example, you can undo the user's previous action
          print('Undo button pressed');
        },
      ),
    );

    // Show the SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}
