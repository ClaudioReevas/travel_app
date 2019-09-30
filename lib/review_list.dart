import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/hippie.jpg", "Varuna Yesas", "1 review", "Comment 5"),
        Review("assets/img/colors.png", "Anahí Salgdo", "2 review", "Lorem Ipsum"),
        Review("assets/img/desert.png", "Gissele Thomas", "2 review", "This is a test")
      ],
    );
  }
}