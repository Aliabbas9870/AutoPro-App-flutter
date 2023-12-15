import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class RatingPage extends StatefulWidget {
const RatingPage({super.key});

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  void show(){
    showDialog(context: context, builder:(context){
      return RatingDialog(title: Text("Rating Ali"),
      
      submitButtonText: "submit", onSubmitted: (RatingDialogResponse ) {  } ,);

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: ElevatedButton(onPressed: show, child: Text("Rating Page")),
          )
        ],
      ),
    );
  }
}