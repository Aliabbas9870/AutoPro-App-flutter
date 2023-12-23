import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Edit Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // color: Colors.amber,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 80,),
                Text(
                  "Profile Updated Successfully!",
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
                    "Your profile information has been updated successfully. Your changes have been saved, and your new information is now reflected in your profile.",
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
      ),
    );
  }
}





class User {
  String username;
  String email;
  String number;
  String gender;
  String fullName;
  String password;
  int age;

  User({
    required this.username,
    required this.email,
    required this.number,
    required this.gender,
    required this.fullName,
    required this.password,
    required this.age,
  });
}

class ProfileForm extends StatelessWidget {
  final TextEditingController fullNameController;
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController numberController;
  final TextEditingController passwordController;
  final TextEditingController ageController;
  final String selectedGender;
  final String countryValue;
  final String stateValue;
  final String cityValue;

  ProfileForm({
    required this.fullNameController,
    required this.usernameController,
    required this.emailController,
    required this.numberController,
    required this.passwordController,
    required this.ageController,
    required this.selectedGender,
    required this.countryValue,
    required this.stateValue,
    required this.cityValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: fullNameController,
          decoration: InputDecoration(labelText: 'Full Name'),
        ),
        SizedBox(height: 16.0),
        TextField(
          controller: usernameController,
          decoration: InputDecoration(labelText: 'Username'),
        ),
        SizedBox(height: 16.0),
        TextField(
          controller: emailController,
          decoration: InputDecoration(labelText: 'Email'),
        ),
        SizedBox(height: 16.0),
        TextField(
          controller: numberController,
          decoration: InputDecoration(labelText: 'Number'),
        ),
        SizedBox(height: 16.0),
        // New fields
        TextField(
          controller: passwordController,
          decoration: InputDecoration(labelText: 'Password'),
        ),
        SizedBox(height: 16.0),
        TextField(
          controller: ageController,
          decoration: InputDecoration(labelText: 'Age'),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 16.0),
        CSCPicker(
          onCountryChanged: (value) {
            // Handle country change
          },
          onStateChanged: (value) {
            // Handle state change
          },
          onCityChanged: (value) {
            // Handle city change
          },
          currentCity: 'Sahiwal',
        ),
        SizedBox(height: 16.0),
        // Gender dropdown
        DropdownButton<String>(
          value: selectedGender,
          onChanged: (String? newValue) {
            // Handle gender change
          },
          items: <String>['Male', 'Female'].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 32.0),
      ],
    );
  }
}

class EditProfileScreen extends StatelessWidget {
  final String initialUsername;
  final String initialEmail;
  final String initialNumber;

  EditProfileScreen({
    required this.initialUsername,
    required this.initialEmail,
    required this.initialNumber,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController();
    TextEditingController usernameController = TextEditingController(text: initialUsername);
    TextEditingController emailController = TextEditingController(text: initialEmail);
    TextEditingController numberController = TextEditingController(text: initialNumber);
    TextEditingController passwordController = TextEditingController();
    TextEditingController ageController = TextEditingController();

    String selectedGender = 'Male'; // Default gender
    String countryValue = "";
    String stateValue = "";
    String cityValue = "";

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileForm(
                fullNameController: fullNameController,
                usernameController: usernameController,
                emailController: emailController,
                numberController: numberController,
                passwordController: passwordController,
                ageController: ageController,
                selectedGender: selectedGender,
                countryValue: countryValue,
                stateValue: stateValue,
                cityValue: cityValue,
              ),
              Container(
                width: 333,
                decoration: BoxDecoration(
                  color: Color(0xff4537DD),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingPage()),
                    );
                    // Save changes logic here
                    saveChanges(
                      context,
                      usernameController.text,
                      emailController.text,
                      numberController.text,
                      selectedGender,
                      fullNameController.text,
                      passwordController.text,
                      int.tryParse(ageController.text) ?? 0,
                    );
                  },
                  child: Text(
                    'Save Changes',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveChanges(
    BuildContext context,
    String updatedUsername,
    String updatedEmail,
    String updatedNumber,
    String updatedGender,
    String updatedFullName,
    String updatedPassword,
    int updatedAge,
  ) {
    // Implement logic to save changes or update the profile
    User updatedUser = User(
      username: updatedUsername,
      email: updatedEmail,
      number: updatedNumber,
      gender: updatedGender,
      fullName: updatedFullName,
      password: updatedPassword,
      age: updatedAge,
    );

    print('Updated User: ${updatedUser.username}, ${updatedUser.email}, ${updatedUser.number}, ${updatedUser.gender}, '
        '${updatedUser.fullName}, ${updatedUser.password}, ${updatedUser.age}, ');
    // You can navigate back or perform other actions after saving changes
  }
}
