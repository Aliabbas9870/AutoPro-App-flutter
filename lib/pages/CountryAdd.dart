import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:flutter/material.dart';

class CountryAdd extends StatelessWidget {
  const CountryAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


  appBar: AppBar(
        title: Text(
          "Country ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // color: Colors.amber,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 80,),
              Text(
                "Country Updated Successfully!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
                 SizedBox(height: 50,),
              Container(
                child: Image.asset('assets/autopro/editprofile.png'),
              ),
                 SizedBox(height: 40,),
              Container(
                width: 300,
                child: Text(
                  "Thank you for updating your country! Your preferences have been saved, and you're now ready to explore AutoPro with a tailored experience just for you. Happy shopping!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),

              Container(
                width: 200,
                decoration: 
                BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff4537DD)
                ),
                child: TextButton(child: Text("Close",style: TextStyle(color: Colors.white),),onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingPage ()));
                },),
              )
            ],
          ),
        ),
      ),

    );

    
  }
}