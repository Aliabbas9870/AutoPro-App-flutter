import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:lottie/lottie.dart';

class OrderPlacePage extends StatefulWidget {
  @override
  _OrderPlacePageState createState() => _OrderPlacePageState();
}

class _OrderPlacePageState extends State<OrderPlacePage> {
  TextEditingController itemNameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Order'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 181,
                height: 293,
                child: Lottie.asset('assets/orderplace.json'),
              ),
              SizedBox(height: 22,),
              TextField(
                controller: itemNameController,
                decoration: InputDecoration(labelText: 'Item Name'),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: quantityController,
                decoration: InputDecoration(labelText: 'Quantity'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: addressController,
                decoration: InputDecoration(labelText: 'Delivery Address'),
              ),
              SizedBox(height: 44.0),
              Container(
                width: 200, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff4538DD)
                ),
                height: 44, 
                child: TextButton(child: Text('Order Place',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),onPressed: (){},),
              )
             
            ],
          ),
        ),
      ),
    );
  }

  void placeOrder() {
    // Implement logic to place the order
    String itemName = itemNameController.text;
    String quantity = quantityController.text;
    String address = addressController.text;

    // Perform any validation or processing of the order details

    // Example: Print order details to console
    print('Order Placed - Item: $itemName, Quantity: $quantity, Address: $address');

    // You can navigate to a confirmation page or perform other actions as needed
  }
}
