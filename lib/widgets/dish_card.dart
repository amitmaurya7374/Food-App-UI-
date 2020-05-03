import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DishCard extends StatelessWidget {
  final String imageLink;
  final String imageDishTitle;
  final Function onpressed;
  DishCard({
    @required this.imageLink,
    this.imageDishTitle,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: onpressed,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 8.0,
            child: Image.asset(
              imageLink,
              height: 210,
              width: 210,
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: Text(
            imageDishTitle,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
