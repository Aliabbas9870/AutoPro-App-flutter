import 'package:autoprocfinal/pages/addresAdd.dart';
import 'package:flutter/material.dart';

class AddressI extends StatelessWidget {
  const AddressI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add your address!",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(41.0),
            child: Center(
                child: Text("Add your address!",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ),
          Container(
            width: 333,
            height: 242,
            child: Image.asset('assets/autopro/addres.png'),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top:12.0),
            child: Container(
              width: 310,
              child: Center(
                child: Text(
                    "Let's make sure we have your address on file. Please provide your complete address information below, including street address, city, postal code, and any additional details if needed."),
              ),
            ),
          ),
              SizedBox(height: 162,),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xff4537DD),
                ),
                child: TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddAdres()));
                }, child: Text("Next",style: TextStyle(color: Colors.white),))),
        ],
      ),
    );
  }
}
