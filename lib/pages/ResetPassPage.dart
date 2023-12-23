import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:flutter/material.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Change Password',
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      )),
      body: Container(
        width: 260,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 29),
          child: Column(children: [
            Text(
              'Entre Old Password',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            TextField(),
            SizedBox(height: 18),
            Text(
              'Entre New Password',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(),
            SizedBox(height: 16),
            Text(
              'Re-entre',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            TextField(),
            SizedBox(
              height: 66,
            ),
            Center(
              child: GestureDetector(

                onTap: (){
                   Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PasswordChangeS()));
                  
                },
                child: Container(
                  width: 233,
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff4537DD)),
                  child: TextButton(
                    child: Text(
                      'Save',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PasswordChangeS()));
                    },
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}




class  PasswordChangeS extends StatelessWidget {
  const PasswordChangeS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


  appBar: AppBar(
        title: Text(
          "Edit Profile",
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
                "Password Updated Successfully!",
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
                  "Your password has been updated successfully. Your account is now more secure. If you have any other concerns or need assistance, please don't hesitate to reach out.",
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