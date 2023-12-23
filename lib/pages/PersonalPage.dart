import 'package:autoprocfinal/pages/EditProfile.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:shared_preferences/shared_preferences.dart';


class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  void getCurrentPosition() async{
    LocationPermission permission=await Geolocator.checkPermission();
    if(permission ==LocationPermission.denied || permission==LocationPermission.deniedForever){
      print("Premission not gave");
      LocationPermission asked=await Geolocator.requestPermission();
    }
    else{
      Position currentPosition= await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      print("Logitude:"+currentPosition.latitude.toString());
      print("Logitude:"+currentPosition.accuracy.toString());
      print("Logitude:"+currentPosition.altitudeAccuracy.toString());
        print("Logitude:"+currentPosition.floor.toString());
      print("Logitude:"+currentPosition.speedAccuracy.toString());
      print("Logitude:"+currentPosition.speed.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4537DD),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Personal Information",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                //  Navigator.push(context,
                //  MaterialPageRoute(builder: (context) => LogoutPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
                width: 89,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfileScreen(initialEmail: 'aliab@gmail.com', initialUsername: 'aliabbas', initialNumber: '03251806654',)));
                    },
                    child: Text(
                      "Edit",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
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
            SizedBox(height: 33,),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Container(width: 156, height: 142, child: CircleAvatar()),
            )),
            SizedBox(
              height: 76,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80.0),
                    topRight: Radius.circular(80.0),
                  ),
                ),
                width: double.infinity,
                height: 556,
                child:  Padding(
                  padding: const EdgeInsets.only(top:42.0,right: 21,left: 22),
                  child: Center(
                    child: Container(
                    //  color: Colors.amber,
                      width: 888,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Full Name",style: TextStyle(fontSize: 20,),),
                              Padding(
                                   padding: const EdgeInsets.only(right:18.0,left: 33,top: 6),
                                child: Text("Ali ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 12,),
                                            
                                 Text("UserName",style: TextStyle(fontSize: 20,),),
                              Padding(
                                padding: const EdgeInsets.only(right:18.0,left: 33,top: 6),
                                child: Text("AliAbbasCS ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 13,),
                                            
                           
                                            
                                 Padding(
                                   padding: const EdgeInsets.only(right:42.0),
                                   child: Text("Email",style: TextStyle(fontSize: 20,),),
                                 ),
                              Padding(
                                padding: const EdgeInsets.only(right:5.0,left: 33,top: 6),
                                child: Text("AliCSAbbas@gmail.com ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 13,),
                               Padding(
                                   padding: const EdgeInsets.only(right:12.0),
                                   child: Text("Password",style: TextStyle(fontSize: 20,),),
                                 ),
                              Padding(
                                padding: const EdgeInsets.only(right:63.0,left: 33,top: 6),
                                child: Text("******************",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 12,),
                              Container(
                                height: 33,
                                width: 122,
                                decoration: BoxDecoration(
                                  
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xff4538DD)),
                                child: TextButton(onPressed: getCurrentPosition, child: Text("Your Current Location)",style: TextStyle(color: Colors.white),)))
                               
                                            
                          ],
                        ),
                      ),
                    ),

                  ),
                ),
                
                
                ),

               
          ],
        ),
      ),
    );
  }
}
