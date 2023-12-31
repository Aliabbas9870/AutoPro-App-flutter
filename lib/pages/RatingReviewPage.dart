import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
class RatingReviewPage extends StatefulWidget {
  @override
  _RatingReviewPageState createState() => _RatingReviewPageState();
}

class _RatingReviewPageState extends State<RatingReviewPage> {
  double rating = 0.0;
  String review = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rating and Review'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rate us:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              RatingBar(
                rating: rating,
                onRatingChanged: (value) {
                  setState(() {
                    rating = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Text(
                'Write a review:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                maxLines: 3,
                onChanged: (value) {
                  setState(() {
                    review = value;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type your review here...',
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 322,
                decoration: BoxDecoration(color: Color(0xff4538DD)),
                child: TextButton(
                  onPressed: () {
                    _showSnackBar(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SettingPage()));
                    // Add your logic to submit the rating and review
                    print('Rating: $rating, Review: $review');

                    // Show an alert after submitting the review
                    showReviewSubmittedAlert(context);
                  },
                  child: Text('Submit',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
              AspectRatio(
                
                aspectRatio: 16 / 9,
                child: DChartComboO(
                  fillColor: (group, ordinalData, index) {
    if (ordinalData.measure > 8) return Colors.red;
    return Colors.blue;
},fillPattern: (group, ordinalData, index) {
    if (ordinalData.measure > 8) return FillPattern.forwarHatch;
    return FillPattern.solid;
},
                  
                  groupList: [
                    
                    OrdinalGroup(
                      id: '1',
                      
                      data: [
                        
                        OrdinalData(domain: '5', measure: 12),
                        OrdinalData(domain: '4', measure: 3),
                        OrdinalData(domain: '3', measure: 2),
                        OrdinalData(domain: '2', measure: 3),
                        OrdinalData(domain: '1', measure: 8),
                      ],
                    ),
                  ],
                ),
              ),

              AspectRatio(
                aspectRatio: 16 / 9,
                child: DChartBarO(
             

                  fillPattern: (group, ordinalData, index) {
    if (ordinalData.measure > 8) return FillPattern.forwarHatch;
    return FillPattern.solid;
},
              fillColor: (group, ordinalData, index) {
    if (ordinalData.measure > 8) return Colors.green;
    return Colors.deepPurple;
},

                  groupList: [
                    OrdinalGroup(
                      id: '1',
                      data: [
                        OrdinalData(domain: '5', measure: 12),
                        OrdinalData(domain: '4', measure: 3),
                        OrdinalData(domain: '3', measure: 2),
                        OrdinalData(domain: '2', measure: 3),
                        OrdinalData(domain: '1', measure: 8),
                      ],
                    ),
                  ],
                ),
              ),

//DChartBarT
            ],
          ),
        ),
      ),
    );
  }

  void showReviewSubmittedAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Review Submitted'),
          content: Text('Thank you for your review!'
              '\n Rating: $rating, Review: $review'),
          actions: [
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop(); // Close the alert
              },
              child: Text("Ok"),
            ),
          ],
        );
      },
    );
  }

  
  void _showSnackBar(BuildContext context) {
    // Create a SnackBar
    final snackBar = SnackBar(
      content: Text('Review is submit!'),
      duration: Duration(seconds: 3), // Optional: Set the duration
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Perform some action when the "Undo" button is pressed
          // For example, you can undo the user's previous action
          print('Undo button pressed');
        },
      ),
    );

    // Show the SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}

class RatingBar extends StatelessWidget {
  final double rating;
  final ValueChanged<double> onRatingChanged;

  RatingBar({required this.rating, required this.onRatingChanged});


  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return IconButton(
          onPressed: () => onRatingChanged(index + 1.0),
          icon: Icon(
            index < rating.floor() ? Icons.star : Icons.star_border,
            size: 30,
            color: Colors.amber,
          ),
        );
      }),
    );
  }

  void _showSnackBar(BuildContext context) {
    // Create a SnackBar
    final snackBar = SnackBar(
      content: Text('This is a SnackBar!'),
      duration: Duration(seconds: 3), // Optional: Set the duration
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Perform some action when the "Undo" button is pressed
          // For example, you can undo the user's previous action
          print('Undo button pressed');
        },
      ),
    );

    // Show the SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }



}
