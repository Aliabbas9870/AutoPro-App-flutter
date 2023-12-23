import 'package:flutter/material.dart';

class TwoStepPage extends StatefulWidget {
  const TwoStepPage({super.key});

  @override
  State<TwoStepPage> createState() => _TwoStepPageState();
}

class _TwoStepPageState extends State<TwoStepPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Two Step Verification"),
      ),
      body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 164,),
            Center(
                child: Text(
              "Enter Pin",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
            SizedBox(height: 32,),
            PinEntryField(),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff4537DD),
                borderRadius: BorderRadius.circular(22)
              ),
              width: 333, 
              height: 55, 
            
              child: TextButton(child: Text("Next",style: TextStyle(color: Colors.white),),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ReEnterPin()));
              },),
            ),
            SizedBox(height: 11,)
          ]),
    );
  }
}



class ReEnterPin extends StatelessWidget {
  const ReEnterPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
        title: Text("Two Step Verification"),
      ),
      body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 164,),
            Center(
                child: Text(
              "Re-Enter Pin",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
            SizedBox(height: 32,),
            PinEntryField(),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff4537DD),
                borderRadius: BorderRadius.circular(22)
              ),
              width: 333, 
              height: 55, 
            
              child: TextButton(child: Text("Next",style: TextStyle(color: Colors.white),),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterNumber()));
              },),
            ),
            SizedBox(height: 11,)
          ]),



    );
  }
}



class EnterNumber extends StatelessWidget {
  const EnterNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
        title: Text("Two Step Verification"),
      ),
      body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 164,),
            Center(
                child: Text(
              "Enter Phone Number",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
            SizedBox(height: 32,),
            Padding(
              padding: const EdgeInsets.only(left:22.0,right: 22),
              child: TextField(
                keyboardType: TextInputType.number,
                maxLength: 13,
                decoration: InputDecoration(
                 // border: OutlineInputBorder(
                    
                  //)
                ),
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff4537DD),
                borderRadius: BorderRadius.circular(22)
              ),
              width: 333, 
              height: 55, 
            
              child: TextButton(child: Text("Done",style: TextStyle(color: Colors.white),),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterNumber()));
              },),
            ),
            SizedBox(height: 11,)
          ]),


    );
  }
}





class PinEntryField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PinTextField(),
        PinTextField(),
        PinTextField(),
        PinTextField(),
        PinTextField(),
      ],
    );
  }
}

class PinTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
  
          color: const Color.fromARGB(31, 212, 207, 207),
        //  width: 2.0,
        
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        obscureText: true,
        maxLength: 1,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          counterText: '', // Hide the character count
        //  border: InputBorder.none,
        ),
      ),
    );
  }
}