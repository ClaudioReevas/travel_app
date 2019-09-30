import 'package:flutter/material.dart';
import 'button.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  //Crear constructor
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  String descriptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_half = Container(
      margin: EdgeInsets.only(
        top:323,
        right: 3,
      ),
      child: Icon(
          Icons.star_half,
          color: Color(0xFFf2c611)
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
        top:323,
        right: 3,
      ),
      child: Icon(
          Icons.star_border,
          color: Color(0xFFf2c611)
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top:323,
        right: 3,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2c611)
      ),
    );

    final description = Container(
        margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
        ),
        child: new Text(
          descriptionPlace,
          style: const TextStyle(
            fontSize: 16.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)
          )

        )
    );

    final title_stars = Row (
      children: <Widget>[
        Container (
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: new Text(namePlace,
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: "Lato",
                fontWeight: FontWeight.w900
              ),
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border
          ],
        ),
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        ButtonPurple("Navigate")
      ]
    );

  }
}