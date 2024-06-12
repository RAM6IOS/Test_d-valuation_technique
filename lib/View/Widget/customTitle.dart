import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
 CustomTitle({ Key? key ,required this.titel}) : super(key: key);

 String titel ;
  @override
  Widget build(BuildContext context){
    return Container(
            margin: EdgeInsets.fromLTRB(30, 0, 25, 5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                titel,
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  height: 1.3,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          );

  }
}