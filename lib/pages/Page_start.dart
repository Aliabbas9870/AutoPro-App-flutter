import 'package:autoprocfinal/pages/Reistration.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 71.0),
              child: Container(
                color: Colors.white,
                child: Image.asset('assets/autopro/page1.png'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 3.0, right: 12),
                child: Text('Welcome to AutoPro Shop',
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              )),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 400,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, left: 32, right: 32),
                child: Text(
                  "The ultimate destination for automotive enthusiasts and drivers alike! Get ready to revamp your ride and elevate your driving experience with our cutting-edge car accessories store app. Whether you're a seasoned gearhead or simply looking to enhance the style, comfort, or performance of your vehicle, we've got you covered. Explore a wide range of premium accessories, from sleek exterior upgrades to state-of-the-art tech gadgets, all designed to make your journey on the road smoother, safer, and more enjoyable",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            //ElevatedButton(onPressed: (){}, child: Text("Get Started")),
            Padding(
              padding: const EdgeInsets.only(bottom: 52.0),
              child: Container(
                  width: 305,
                  color: Color(0xff4537DD),
                  child: TextButton(
                      onPressed: () {},
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                        },
                        child: Text("Get Started",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
