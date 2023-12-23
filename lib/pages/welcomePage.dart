import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:autoprocfinal/pages/WlHome.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:33.0,right: 18,left: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 33,),
          
              Padding(
                padding: const EdgeInsets.only(top:99.0),
                child: Text("Welcome!",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:66.0),
                child: Container(
                  child: Image.asset("assets/autopro/welcm.png"),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left:22.0,right: 22,top: 55),
                  // child:  AnimatedTextKit(
                  //     animatedTexts: [
                  //       TyperAnimatedText('Welcome to AutoPro !'),
                  //       TyperAnimatedText('We are thrilled to have you on board.Your seamless shopping experience begins now. Happy shopping, and dont hesitate to reach out if you need any assistance along the way. We are here to make your shopping journey a breeze!'),
                       
                  //     ],
                  //     // onTap: () {
                  //     //   print("Tap Event");
                  //     // },
                  //   ),
                   child: Text(
                      "Welcome to AutoPro ! We're thrilled to have you on board. Your seamless shopping experience begins now. Happy shopping, and don't hesitate to reach out if you need any assistance along the way. We're here to make your shopping journey a breeze!"),
                ),
              ),
                  

    //  AnimatedTextKit(
    //   animatedTexts: [
    //     TyperAnimatedText('Welcome to AutoPro !'),
    //     TyperAnimatedText('We are thrilled to have you on board.Your seamless shopping experience begins now. Happy shopping, and dont hesitate to reach out if you need any assistance along the way. We are here to make your shopping journey a breeze!'),
       
    //   ],
    //   // onTap: () {
    //   //   print("Tap Event");
    //   // },
    // ),



                  SizedBox(height: 59,),
                   Container(
                width: 260,
                decoration: BoxDecoration(
                  color: Color(0xff4537DD),
                   borderRadius: BorderRadius.circular(11)
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeWel()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    ))),
            ],
          ),
        ),
      ),
    );
  }
}
