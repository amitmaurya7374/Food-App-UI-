import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class QuantityWidget extends StatelessWidget {
  const QuantityWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Quantity',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Color(0xff3d404c),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.minus,
              size: 20,
              color: Colors.red,
            ),
            onPressed: () {
              //implement the minus icon functionality
            },
          ),
        ),
        SizedBox(
          width: 7,
        ),
        CircleAvatar(
          child: Text('2'),
          backgroundColor: Color(0xfff5f5f5),
        ),
        SizedBox(
          width: 7,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.plus,
              size: 20,
              color: Colors.red,
            ),
            onPressed: () {
              //implement the Add icon functionality
            },
          ),
        ),
      ],
    );
  }
}
