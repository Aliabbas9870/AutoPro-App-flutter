import 'package:autoprocfinal/pages/SettingPage.dart';
import 'package:flutter/material.dart';



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
              decoration: BoxDecoration(
                color: Color(0xff4538DD)
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));
                  // Add your logic to submit the rating and review
                  print('Rating: $rating, Review: $review');
              
                  // Show an alert after submitting the review
                  showReviewSubmittedAlert(context);
                },
                child: Text('Submit',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
              ),
            ),
          ],
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
          content: Text('Thank you for your review!''\n Rating: $rating, Review: $review'),
          
          actions: [

            
            TextButton(
              onPressed: () async{
                Navigator.of(context).pop(); // Close the alert
              },
              child: Text("Ok"),
            ),
          ],
        );
      },
    );
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
}
