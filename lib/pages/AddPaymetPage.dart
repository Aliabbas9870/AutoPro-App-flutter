import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:autoprocfinal/pages/TwoStepVerificationPage.dart';
import 'package:flutter/material.dart';

class AddPayment extends StatelessWidget {
  const AddPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Payment Method",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 63,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 33,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffD9D9D9), border: Border.all(width: 1)),
                  width: 81,
                  height: 54,
                  child: Image.asset('assets/autopro/mastercard.png'),
                ),
                SizedBox(
                  width: 21,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffD9D9D9), border: Border.all(width: 1)),
                  width: 81,
                  height: 54,
                  child: Image.asset('assets/autopro/Visa.png'),
                ),
                SizedBox(
                  width: 21,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffD9D9D9), border: Border.all(width: 1)),
                  width: 81,
                  height: 54,
                  child: Image.asset('assets/autopro/dolar.png'),
                ),
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //color: Colors.amber,
                width: double.infinity,
                height: 473,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 33,
                        ),
                        Text(
                          'Entre Card Number',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        PinEntryField(),
                        SizedBox(
                          height: 55,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0, right: 55),
                          child: TextField(
                            decoration: InputDecoration(),
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 22.0, right: 22, top: 33),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "CCV",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 62.0),
                                child: Text(
                                  "Expire",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 22.0, right: 22, top: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 94,
                                  height: 22,
                                  child: TextField(
                                    decoration: InputDecoration(),
                                  )),
                              Container(
                                  width: 94,
                                  height: 22,
                                  child: TextField(
                                    decoration: InputDecoration(),
                                  ))
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ),
            Container(
              width: 222,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff4535DD)),
              child: TextButton(
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {

                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddPaymentS ()));
                },
              ),
            ),
            SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}



class AddPaymentS extends StatelessWidget {
  const AddPaymentS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
          "Add Payment Method",
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
                "Payment Method Added Successfully!",
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

