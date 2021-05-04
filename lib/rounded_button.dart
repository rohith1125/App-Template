import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.colour, this.title, @required this.onPressed});

  final Color colour;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height*0.02),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(7.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: width*0.9,
          height: height*0.06,
          child: Text(
            title,
            style: GoogleFonts.abel(
              letterSpacing: 5.0,
              color: Colors.white,
              fontSize: height*0.025,
            ),
          ),
        ),
      ),
    );
  }
}
