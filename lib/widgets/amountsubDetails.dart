import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AmountSubDetails extends StatelessWidget {
  final String chargeTitle;
  final String chargeAmount;
  AmountSubDetails({
    @required this.chargeTitle,
    @required this.chargeAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          chargeTitle,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18.0,
            ),
          ),
        ),
        Text(
          chargeAmount,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
