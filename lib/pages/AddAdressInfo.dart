import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:flutter/material.dart';

class AddAdressInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AddressUpdateForm(),
      ),
    );
  }
}

class AddressUpdateForm extends StatefulWidget {
  @override
  _AddressUpdateFormState createState() => _AddressUpdateFormState();
}

class _AddressUpdateFormState extends State<AddressUpdateForm> {
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: addressController,
          decoration: InputDecoration(labelText: 'New Address'),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // Handle address update logic here
            updateAddress();
          },
          child: Text('Update Address'),
        ),

SizedBox(height: 446,),
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
    );
  }

  void updateAddress() {
    // Implement logic to update the address
    String newAddress = addressController.text;

    // Perform any validation or processing of the new address

    // Example: Print the updated address to the console
    print('Address Updated: $newAddress');

    // You can navigate to a confirmation page or perform other actions as needed
  }
}

