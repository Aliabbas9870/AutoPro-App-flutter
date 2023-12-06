import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class selectCountry extends StatefulWidget {
   selectCountry({super.key});

  @override
  State<selectCountry> createState() => _selectCountryState();
}

class _selectCountryState extends State<selectCountry> {
  TextEditingController searchController = TextEditingController();
  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();
  List<String> countries = [
    'United States',
    'Canada',
    'United Kingdom',
    'Germany',
    'France',
    'Australia',
    // Add more countries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Country/Region',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      ),
      body: Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 111,),
        Center(child: Text("Choose your country!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
        SizedBox(height: 33,),
        Container(
          width: 77,
          child: Image.asset('assets/autopro/Vector.png'),
        ),
        SizedBox(height: 12,),
        Container(
          width: 311,
          child: Text("Find the right parts for your ride, just choose your country")),

            
       Padding(
      padding: const EdgeInsets.all(16.0),
      child: AutoCompleteTextField<String>(
        key: key,
        clearOnSubmit: false,
        suggestions: countries,
        decoration: InputDecoration(
          labelText: 'Select Country',
          border: OutlineInputBorder(),
        ),
        itemFilter: (item, query) {
          return item.toLowerCase().startsWith(query.toLowerCase());
        },
        itemSorter: (a, b) {
          return a.compareTo(b);
        },
        itemSubmitted: (item) {
          // Handle the selected country
          print('Selected Country: $item');
        },
        itemBuilder: (context, item) {
          return ListTile(
            title: Text(item),
          );
        },
        controller: searchController,
      ),
    )

            

      ]),
    );
  }
}











