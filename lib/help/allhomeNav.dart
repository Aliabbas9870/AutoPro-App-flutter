import 'package:flutter/material.dart';




class HomeWel1 extends StatefulWidget {
  const HomeWel1({Key? key}) : super(key: key);

  @override
  State<HomeWel1> createState() => _HomeWel1State();
}

class _HomeWel1State extends State<HomeWel1> {
  int _currentIndex = 0;

  // List of widgets or pages for each navigation item
  final List<Widget> _pages = [
    HomeScreen(),
    CartScreen(),
    MessagesScreen(),
    AccountsScreen(),
    // Add more screens as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          
          });
        },
        backgroundColor: Color(0xff4537DD),
        fixedColor: Colors.white,
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
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home'),
      ),
      body:
       Text("ali")

    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        // Your existing code for the first container
                      ],
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Column(
                      children: [
                        // Your existing code for the second container
                      ],
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Column(
                      children: [
                        // Your existing code for the third container
                      ],
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
                      // Your existing code for category containers
                    ],
                  ),
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
                          // Your existing code for trending containers
                        ],
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Your existing code for trending containers
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Your existing code for trending containers
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Cart Screen'),
    );
  }
}

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MessageDetailsScreen()),
          );
        },
        child: Text('Open Message Details'),
      ),
    );
  }
}

class MessageDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message Details'),
      ),
      body: Center(
        child: Text('Message Details Screen'),
      ),
    );
  }
}

class AccountsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Accounts Screen'),
    );
  }
}
