import 'package:flutter/material.dart'; 


class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Logout",style: TextStyle(color: Colors.black,fontSize: 38,fontWeight: FontWeight.bold),),
      ),
    );
  }
}