import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionItem extends StatelessWidget {
 SectionItem({ Key? key , required this.icon ,required this.title ,required this.image , required this.height ,required this.width}) : super(key: key);
IconData icon;
String title ; 
String image ;
double width;
double height;

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.fromLTRB(24, 0, 25, 5),
    child:Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
              //margin: const EdgeInsets.fromLTRB(0,0,17.9 ,1),
               
        color: Color.fromRGBO(248, 248, 248, 1),
        height: height.h,
        width: width.w,
               
                child: SizedBox(
                  child: SvgPicture.asset(image)
                  )
              ),
          SizedBox(width: 16),
          Text(title , style: GoogleFonts.spaceGrotesk(
            color: Colors.black,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            height: 0.08,
          ),),
        ],
      ),
    )
    );
  }
}