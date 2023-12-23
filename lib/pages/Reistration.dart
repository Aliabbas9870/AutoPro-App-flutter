import 'dart:math';
import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:autoprocfinal/pages/WlHome.dart';
import 'package:autoprocfinal/pages/mainHomePage.dart';
import 'package:autoprocfinal/pages/welcomePage.dart';
import 'package:autoprocfinal/phone/phoneSign.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:get/get.dart';
import 'package:autoprocfinal/pages/add_country_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController cfpassController = TextEditingController();
  bool success = false;
  final GlobalKey<FormState> _formeKey = GlobalKey<FormState>();

  void createAccount() async {
    String name = userController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String cpassword = cfpassController.text.trim();

    if (name == '' || email == '' || password == '' || cpassword == '') {
      AlertDialog(
        title: Text('Please Fill all Field'),
      );
    } else if (password != cpassword) {
      AlertDialog(
        title: Text('Password Not Matech'),
      );
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        AlertDialog(
          title: Text('Congrats'),
        );
        if (userCredential != null) {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>selectCountry()));
          AlertDialog();
        }
      } on FirebaseAuthException catch (ex) {
        AlertDialog(
          title: Text('Error'),
          content: Text(ex.code.toString()),
        );
      }
    }
  }

  // bool success = false;
//////////////////
  ///
  ///
  void _submitForm() {
    if (_formeKey.currentState!.validate()) {
      ScaffoldMessenger.of(_formeKey.currentContext!).showSnackBar(
          const SnackBar(content: Text("Form Successful Submit")));
    }
  }

///////////
  ///
  ///
  String? _validateEmail(value) {
    if (value!.isEmpty) {
      return "Please Enter Email";
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}');
    if (!emailRegExp.hasMatch(value)) {
      return "please Enter Valid Email";
    }
    return null;
  }

///////////////
  ///
  ///
  ///
  String? _validPhone(value) {
    if (value!.isEmpty) {
      return "Please Enter a Phone Number ";
    }
    if (value.length != 11) {
      return "Please Enter 11 Digits";
    }
    return null;
  }

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
                Form(
                  key: _formeKey,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12),
                    child: TextFormField(
                      controller: userController,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          label: Text("Full Name"),
                          hintText: "Enter Your Full Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(47))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: _validateEmail,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: emailController,
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Password";
                      }
                      return null;
                    },
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: success ? Colors.green : Colors.red,

                              // borderSide: BorderSide(

                              width: 2),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        label: Text("Password"),
                        hintText: "Enter Your Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(47))),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),

                // FlutterPwValidator(
                //   defaultColor: Colors.grey.shade300,
                //   controller: passwordController,
                //   successColor: Colors.green.shade700,
                //   minLength: 8,
                //   uppercaseCharCount: 2,
                //   numericCharCount: 3,
                //   specialCharCount: 1,
                //   normalCharCount: 3,
                //   width: 344,
                //   height: 212,
                //   onSuccess: () {
                //     setState(() {
                //       success = true;
                //     });
                //   },
                //   onFail: () {
                //     setState(() {
                //       success = false;
                //     });
                //   },
                // ),

                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: TextFormField(
                    controller: cfpassController,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        label: Text("Confirm Password"),
                        hintText: 'Confirm your Password',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: success ? Colors.green : Colors.red,

                              // borderSide: BorderSide(

                              width: 2),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.circular(47))),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                FlutterPwValidator(
                  defaultColor: Colors.grey.shade300,
                  controller: passwordController,
                  successColor: Colors.green.shade700,
                  minLength: 8,
                  uppercaseCharCount: 2,
                  numericCharCount: 3,
                  specialCharCount: 1,
                  normalCharCount: 3,
                  width: 324,
                  height: 200,
                  onSuccess: () {
                    setState(() {
                      success = true;
                    });
                  },
                  onFail: () {
                    setState(() {
                      success = false;
                    });
                  },
                ),
                SizedBox(
                  height: 42,
                ),
                Container(
                  width: 325,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Color(0xff4537DD),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextButton(
                      onPressed: () {
                        createAccount();
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),

                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account ?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text(
                          " Sign in",
                          style: TextStyle(color: Colors.blue),
                        )),
                         TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PhoneAuthScreen()));
                        },
                        child: Text(
                          " SignIn Phone",
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

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  void login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if (email == ' ' || password == ' ') {
      print('please fill');
      AlertDialog(
        title: Text('Please Fill the line'),
      );
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
             AlertDialog(
          title: Text('done'),
        );
        if (userCredential != null) {
        
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeWel()));
        }
      } on FirebaseAuthException catch (ex) {
        print(ex.code.toString());
        AlertDialog(
          title: Text('Please Fill the line'),
        );
      }
    }
  }

  String? _validateEmail(value) {
    if (value!.isEmpty) {
      return "Please Enter Email";
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}');
    if (!emailRegExp.hasMatch(value)) {
      return "please Enter Valid Email";
    }
    return null;
  }

  bool success = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 24,
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
            height: 12,
          ),
          Container(
            width: 280,
            child: Image.asset('assets/autopro/login.png'),
          ),
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
                    validator: _validateEmail,
                    controller: emailController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        label: Text("Email-Address"),
                        hintText: 'Enter Your Email',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.circular(47))),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: success ? Colors.green : Colors.red,
                              width: 2),
                          borderRadius: BorderRadius.circular(47),
                        ),
                        label: Text("Password"),
                        hintText: "Enter Your Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(47))),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                FlutterPwValidator(
                  defaultColor: Colors.grey.shade300,
                  controller: passwordController,
                  successColor: Colors.green.shade700,
                  minLength: 8,
                  uppercaseCharCount: 2,
                  numericCharCount: 3,
                  specialCharCount: 1,
                  normalCharCount: 3,
                  width: 324,
                  height: 200,
                  onSuccess: () {
                    setState(() {
                      success = true;
                    });
                  },
                  onFail: () {
                    setState(() {
                      success = false;
                    });
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 52.0),
                  child: Container(
                      width: 305,
                      decoration: BoxDecoration(
                          color: Color(0xff4537DD),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextButton(
                          onPressed: () {},
                          child: InkWell(
                            onTap: () {
                              login();
                              // Navigator.push(

                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => selectCountry()));
                            },
                            child: Text("Login",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account ?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
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
