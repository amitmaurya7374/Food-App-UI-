import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DeliveryIcons extends StatelessWidget {
  final String image;
  final Function onpress;
  final String title;
  DeliveryIcons({
    @required this.image,
    @required this.onpress,
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset(
              image,
              height: 49,
              width: 59,
            ),
          ),
          Text(
            title,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 16.0,
                color: Color(0xff474a56),
                fontStyle: FontStyle.italic,
                
              ),
              
            ),
            textAlign: TextAlign.center,
          ),
          
        ],
      ),
    );
  }
}
