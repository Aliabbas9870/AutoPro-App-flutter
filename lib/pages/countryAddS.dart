import 'package:flutter/material.dart';




class CountryDropdown extends StatefulWidget {
  @override
  _CountryDropdownState createState() => _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
  String selectedCountry = 'United States'; // Default country

  List<String> countries = [
    'United States',
    'Canada',
    'United Kingdom',
    'Germany',
    'France',
    // Add more countries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: DropdownButton<String>(
            value: selectedCountry,
            onChanged: (String? newValue) {
              setState(() {
                selectedCountry = newValue!;
              });
            },
            items: countries.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
