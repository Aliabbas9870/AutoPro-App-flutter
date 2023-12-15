
import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:autoprocfinal/pages/mainHomePage.dart';
import 'package:autoprocfinal/pages/Cart_Message_accountPage.dart';
import 'package:flutter/material.dart';

class HomeWel extends StatefulWidget {
  const HomeWel({super.key});

  @override
  State<HomeWel> createState() => _HomeWelState();
}

class _HomeWelState extends State<HomeWel> {
  int _currentIndex = 0;
    final List<Widget> _pages = [
    HomeScreen(),
    CartScreen(),
    MessagesScreen(),
    AccountsScreen(),
    SettingPage(),
    // Add more screens as needed
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:_pages[_currentIndex],
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
