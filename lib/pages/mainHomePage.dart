import 'package:autoprocfinal/pages/BottonNavBar.dart';
import 'package:autoprocfinal/pages/Cart_Message_accountPage.dart';
import 'package:flutter/material.dart';




class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Container(
      //     height: 41,
      //     child: TextField(
      //       decoration: InputDecoration(
      //           border: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(44),
      //               borderSide: BorderSide(color: Colors.black26))),
      //     ),
      //   ),
      //   actions: [Icon(Icons.search)],
      // ),
      body:   Padding(
          padding: const EdgeInsets.only(top: 22.0, right: 16, left: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 23,
                          color: Color(0xff4537DD),
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchHistory ()));
                      }
                      ,
                      color: Colors.black,
                      icon: Icon(Icons.search),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 170,
                            height: 115,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Color(0xffD9D9D9),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context,MaterialPageRoute(builder:(context)=>BottomNavPage()));
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(11),
                                          color: Color(0xffD9D9D9),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            "Complete protection of your car",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 147,
                                        height: 33,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4.0),
                                          child: Text(
                                            "Quality product available at cheap prices",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(3.0),
                                      //   child: Container(
                                      //     width: 78,
                                      //     height: 20,
                                      //     child: Image.asset('assets/autopro/cheaphom.png')),
                                      // ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                   //   Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchHistory ()));
                                    },
                                    child: Container(
                                        width: 43,
                                        height: 24,
                                        decoration: BoxDecoration(
                                            color: Color(0xff4537DD),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Center(
                                          child: Text(
                                            "New",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: Color(0xffD9D9D9),
                            ),
                            height: 115,
                            child: Column(children: [
                              Container(
                                  child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                    "Complete protection of your wheels ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              )),
                              Container(
                                width: 99,
                                height: 40,
                                child:
                                    Image.asset('assets/autopro/tiremax.png'),
                              ),
                              Container(
                                  width: 46,
                                  decoration: BoxDecoration(
                                        color: Color(0xff4537DD),
                                      borderRadius: BorderRadius.circular(11)),
                                  child: Center(child: Text("New",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)))
                            ]),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Color(0xffD9D9D9),
                        ),
                        width: 170,
                        height: 242,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                "Complete products available for your car",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                  "Quality products available at cheap prices!"),
                            ),
                            Container(
                              height: 98,
                              width: 111,
                              child: Image.asset('assets/autopro/tirehm.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, right: 256),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 20, right: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 110,
                            decoration: BoxDecoration(
                                color: Color(0xff66BE99),
                                borderRadius: BorderRadius.circular(12)),
                            height: 140,
                            child: Column(
                              children: [
                                Container(
                                  width: 87,
                                  height: 110,
                                  child:
                                      Image.asset('assets/autopro/oilpic.png'),
                                ),
                                Text(
                                  'Oil & lubes',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffE0A66F),
                                borderRadius: BorderRadius.circular(12)),
                            width: 110,
                            height: 140,
                            child: Column(
                              children: [
                                Container(
                                  width: 87,
                                  height: 110,
                                  child:
                                      Image.asset('assets/autopro/battery.png'),
                                ),
                                Text(
                                  "Batteries",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffBC3596),
                                borderRadius: BorderRadius.circular(12)),
                            width: 110,
                            height: 140,
                            child: Column(children: [
                              Container(
                                width: 197,
                                height: 110,
                                child:
                                    Image.asset('assets/autopro/image19.png'),
                              ),
                              Text(
                                "Accessories",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                            // color: Color(0xffBC3596)
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            child: Column(children: [
                              Container(
                                width: 197,
                                height: 110,
                                child: Image.asset('assets/autopro/whle.png'),
                              ),
                              Text(
                                "Wheels & Tires",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                            decoration: BoxDecoration(
                                color: Color(0xffC95B5B),
                                borderRadius: BorderRadius.circular(12)),
                            width: 110,
                            height: 140,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            child: Column(children: [
                              Container(
                                width:207,
                                height: 110,
                                child: Image.asset('assets/autopro/tool.png'),
                              ),
                              Text(
                                "Tools",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                            decoration: BoxDecoration(
                                color: Color(0xff4F8FF2),
                                borderRadius: BorderRadius.circular(12)),
                            width: 110,
                            height: 140,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, right: 256),
                  child: Text(
                    "Trendings",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 20, right: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 140,
                                decoration: BoxDecoration(
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                                height: 120,
                                child: Column(children: [
                                  Container(
                                    height: 90,
                                    width: 99,
                                    child:
                                        Image.asset('assets/autopro/chir2.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Text(
                                      "Leather seat cover",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ]),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                                width: 140,
                                height: 120,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 100,
                                      child: Image.asset(
                                          'assets/autopro/perfume car.png'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Text(
                                        "Aroon car perfume",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                            ]),
                        SizedBox(
                          height: 13,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 140,
                                decoration: BoxDecoration(
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                                height: 120,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 79,
                                      height: 69,
                                      child: Image.asset(
                                          'assets/autopro/perfume.png'),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: Text(
                                        "Performance air filter",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(12)),
                                width: 140,
                                height: 120,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 78,
                                      height: 88,
                                      child: Image.asset(
                                          'assets/autopro/newoilbotle.png'),
                                    ),
                                    Text(
                                      "Havoline motor oil",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                            ]),
                        SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, right: 172),
                  child: Text(
                    "Top selling products",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0, top: 12),
                                    child: Text(
                                      "Car ambitions lights",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 77,
                                    child: Image.asset(
                                        'assets/autopro/abitionlight.png'),
                                  )
                                ],
                              ),
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Color(0xffD9D9D9),
                                  borderRadius: BorderRadius.circular(12)),
                              height: 120,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                              child: Column(children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 4.0, top: 12),
                                  child: Text(
                                    "JBL woofer box",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width: 77,
                                  child:
                                      Image.asset('assets/autopro/speaker.png'),
                                )
                              ]),
                              decoration: BoxDecoration(
                                  color: Color(0xffD9D9D9),
                                  borderRadius: BorderRadius.circular(12)),
                              width: 140,
                              height: 120,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 12.0,
                                    ),
                                    child: Text(
                                      "Alloy 22 ich wheels",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 77,
                                    child: Image.asset(
                                        'assets/autopro/tireexcel.png'),
                                  )
                                ],
                              ),
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Color(0xffD9D9D9),
                                  borderRadius: BorderRadius.circular(12)),
                              height: 120,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 12.0,
                                    ),
                                    child: Text(
                                      "Police lights",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 97,
                                    child: Image.asset(
                                        'assets/autopro/plicelight.png'),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xffD9D9D9),
                                  borderRadius: BorderRadius.circular(12)),
                              width: 140,
                              height: 120,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
       
    );
  }
}