import 'package:autoprocfinal/pages/TwoStepVerificationPage.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy/Security',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black, // Set the border color to black
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Notification"),
                    ),
                    OnOffSwitch(),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Set the border color to black
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("System Notifications"),
                    ),
                    OnOffSwitch(),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Set the border color to black
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Orders And Logistics "),
                    ),
                    OnOffSwitch(),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black, // Set the border color to black
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Messages"),
                    ),
                    OnOffSwitch(),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Set the border color to black
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Clear History "),
                    ),
                    OnOffSwitch(),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Set the border color to black
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Clear App Cache "),
                    ),
                    OnOffSwitch(),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    //color: Colors.black12,
                    border: Border.all(
                      color: Colors.black, // Set the border color to black
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: GestureDetector(
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TwoStepPage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("Two Step Verification"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>TwoStepPage()));
                            },
                            icon: Icon(Icons.arrow_forward_ios_outlined)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OnOffSwitch extends StatefulWidget {
  @override
  _OnOffSwitchState createState() => _OnOffSwitchState();
}

class _OnOffSwitchState extends State<OnOffSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
        activeColor: Color(0xFF4537DD),
        inactiveTrackColor: Colors.black12);
  }
}
