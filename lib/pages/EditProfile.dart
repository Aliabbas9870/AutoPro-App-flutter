import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Edit Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black)),
    
      ),



      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // color: Colors.amber,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('First Name'),
                        SizedBox(
                          height: 12,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      ],
                    ),
                      Column(
                        children: [
                          Text('Last Name'),
                          SizedBox(height: 12,),
                           TextField()
                        ],
                      ),
                
                  ],
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}