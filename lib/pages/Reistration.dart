import 'package:autoprocfinal/pages/add_country_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      extendBodyBehindAppBar: true,

      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 114,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 88.0),
            child: Container(
                child: Center(
                    child: Text(
              "Welcome Onboard!",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: Container(
                child: Center(
                    child: Text(
              "Register now to rev up your automotive journey!",
              style: TextStyle(
                fontSize: 13,
              ),
            ))),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            width: 360,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text("Full Name"),
                        hintText: "Enter Your Full Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(47))),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text("Email-Address"),
                        hintText: 'Enter Your Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(47))),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text("Password"),
                        hintText: "Enter Your Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(47))),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text("Confirm Password"),
                        hintText: 'Confirm your Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(47))),
                  ),
                ),
                SizedBox(
                  height: 42,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 52.0),
                  child: Container(
                      width: 305,
                      color: Color(0xff4537DD),
                      child: TextButton(
                          onPressed: () {},
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            },
                            child: Text("Register",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ))),
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account ?"),
                    TextButton(
                        onPressed: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));},
                        child: Text(
                          " Sign in",
                          style: TextStyle(color: Colors.blue),
                        )),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBodyBehindAppBar: true,

      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 114,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 88.0),
            child: Container(
                child: Center(
                    child: Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ))),
          ),
          
          SizedBox(
            height: 32,
          ),
          Container(
            width: 280,
            child: Image.asset('assets/autopro/login.png'),),
          Container(
            width: 360,
            child: Column(
              children: [
                
                
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text("Email-Address"),
                        hintText: 'Enter Your Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(47))),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text("Password"),
                        hintText: "Enter Your Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(47))),
                  ),
                ),
               
                SizedBox(
                  height: 42,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 52.0),
                  child: Container(
                      width: 305,
                      color: Color(0xff4537DD),
                      child: TextButton(
                          onPressed: () {},
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => selectCountry()));
                            },
                            child: Text("Login",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ))),
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account ?"),
                    TextButton(
                        onPressed: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));},
                        child: Text(
                          " Sign Up",
                          style: TextStyle(color: Colors.blue),
                        )),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}


