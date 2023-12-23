import 'package:flutter/material.dart';


class GeoLoacationGet extends StatefulWidget {
  const GeoLoacationGet({super.key});

  @override
  State<GeoLoacationGet> createState() => _GeoLoacationGetState();
}

class _GeoLoacationGetState extends State<GeoLoacationGet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Location") ,
      ),
      body: Column(
        children: [
          TextButton(onPressed: (){}, child: Text("Get Your Location")),
        ],
      ),
    );
  }
}