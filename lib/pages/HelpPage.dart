import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
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
