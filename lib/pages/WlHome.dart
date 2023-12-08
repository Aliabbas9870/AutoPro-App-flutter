import 'package:flutter/material.dart';

class HomeWel extends StatefulWidget {
  const HomeWel({super.key});

  @override
  State<HomeWel> createState() => _HomeWelState();
}

class _HomeWelState extends State<HomeWel> {
  int _currentIndex = 0;

  // List of widgets or pages for each navigation item
  final List<Widget> _pages = [
    //Add your pages/widgets here
    // PageOne(),
    // PageTwo(),
    // PageThree(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22.0, right: 26, left: 26),
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
                      "Welcome!",
                      style: TextStyle(
                          fontSize: 23,
                          color: Color(0xff4537DD),
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      color: Colors.black,
                      icon: Icon(Icons.search),
                    ),
                  ],
                ),
                Expanded(
                    child: Container(
                  color: Colors.blueAccent,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            color: Colors.grey,
                          ),
                          Container(
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.green,
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },

          backgroundColor: Color(0xff4537DD), // Set the background color
          fixedColor: Colors.white, // Set the selected item color
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              backgroundColor: Color(0xff4537DD),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Accounts',
            ),
            // Add more items as needed
          ],
        ));
  }
}
