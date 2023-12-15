import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:autoprocfinal/pages/addresinfo.dart';
import 'package:csc_picker/model/select_status_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:get/get.dart';

class selectCountry extends StatefulWidget {
  selectCountry({super.key});

  @override
  State<selectCountry> createState() => _selectCountryState();
}

class _selectCountryState extends State<selectCountry> {
  TextEditingController searchController = TextEditingController();
  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();

  // String countryValue = "";
  // String stateValue = "";
  // String cityValue = "";
  // String address = "";
  // List<String> countries = [
  //   'United States',
  //   'Canada',z
  //   'United Kingdom',
  //   'Germany',
  //   'France',
  //   'United States',
  //   'Pakistan'
  //       'Canada',
  //   'United Kingdom',
  //   'Germany',
  //   'France',
  //   'Australia',
  //   'United States',
  //   'Canada',
  //   'United Kingdom',
  //   'Germany',
  //   'France',
  //   'Australia',
  //   'Australia',
  //   // Add more countries as needed
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Country/Region',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 111,
              ),
              Center(
                  child: Text(
                "Choose your country!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 33,
              ),
              Container(
                width: 77,
                child: Image.asset('assets/autopro/google.png'),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                  width: 311,
                  child: Text(
                      "Find the right parts for your ride, just choose your country,state and city")),
              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child: AutoCompleteTextField<String>(
              //     key: key,
              //     clearOnSubmit: false,
              //     suggestions: countries,
              //     decoration: InputDecoration(
              //       labelText: 'Select Country',
              //       border: OutlineInputBorder(),
              //     ),
              //     itemFilter: (item, query) {
              //       return item.toLowerCase().startsWith(query.toLowerCase());
              //     },
              //     itemSorter: (a, b) {
              //       return a.compareTo(b);
              //     },
              //     itemSubmitted: (item) {
              //       // Handle the selected country
              //       print('Selected Country: $item');
              //     },
              //     itemBuilder: (context, item) {
              //       return ListTile(
              //         title: Text(item),
              //       );
              //     },
              //     controller: searchController,
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.only(top: 22.0, right: 31, left: 31),
                child: CSCPicker(
                  layout: Layout.vertical,
                  onCountryChanged: (country) {},
                  onCityChanged: (City) {},
                  onStateChanged: (State) {},
                  dropdownDialogRadius: 20,
                  countryDropdownLabel: "*Select Country",
                  stateDropdownLabel: "*Select State",
                  cityDropdownLabel: "*Select City",
                  searchBarRadius: 30,
                ),
              ),
              SizedBox(height: 162,),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xff4537DD),
                ),
                child: TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressI()));
                }, child: Text("Next",style: TextStyle(color: Colors.white),)),
              )
            ]),
      ),
    );
  }
}
