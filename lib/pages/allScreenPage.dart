

import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

class paymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "To Pay",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Container(
                        width: 312,
                        height: 55,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: 33,
                      height: 53,
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 42,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text("No Ithems Available")
              ],
            ),
          ),
        ));
  }
}

class ToShipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("To Ship",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Container(
                        width: 312,
                        height: 55,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: 33,
                      height: 53,
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 42,
                        ),          onPressed: () {},
  ),            )
                  ],
          ),
                SizedBox(
            height: 8,
                ),
      Text("No Ithems Available")
              ],
            ),
          ),
        ));
  }
}



class ToReceivePage extends StatelessWidget {
  const ToReceivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("To Recieve",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Container(
                        width: 312,
                        height: 55,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: 33,
                      height: 53,
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 42,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text("No Ithems Available")
              ],
            ),
          ),
        ));
  }
}


class ToReviewPage extends StatefulWidget {
  const ToReviewPage({super.key});

  @override
  State<ToReviewPage> createState() => _ToReviewPageState();
}

class _ToReviewPageState extends State<ToReviewPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("To Review",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Container(
                        width: 312,
                        height: 55,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: 33,
                      height: 53,
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 42,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text("No Ithems Available"),
                ElevatedButton(onPressed: (){
                  return _showDialog(context);
                }, child: Text("Action Alert")),
              
              ],
            ),
          ),
        ));
  }

  void _showDialog(BuildContext context) {
    // showDialog returns a Future that completes when the dialog is dismissed
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Dialog Title'),
          content: Text('This is the content of the dangerous.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Close'),
            ),
            TextButton(
              onPressed: (){},
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}

class MyReturn extends StatefulWidget {
  const MyReturn({super.key});

  @override
  State<MyReturn> createState() => _MyReturnState();
}

class _MyReturnState extends State<MyReturn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Return"),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Container(
                        width: 312,
                        height: 55,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: 33,
                      height: 53,
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 42,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text("No Ithems Available")
              ],
            ),
          ),
        ));
  }
}

class MyCancel extends StatefulWidget {
  const MyCancel({super.key});

  @override
  State<MyCancel> createState() => _MyCancelState();
}

class _MyCancelState extends State<MyCancel> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Cancel",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Container(
                        width: 312,
                        height: 55,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: 33,
                      height: 53,
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 42,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text("No Ithems Available"),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //   Text('Switch Value: $_switchValue'),
                      SizedBox(height: 20),
                      Switch(
                        value: _switchValue,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
