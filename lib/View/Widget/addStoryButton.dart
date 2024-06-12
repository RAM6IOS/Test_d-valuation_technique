import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddStoryButton extends StatelessWidget {
const AddStoryButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return DottedBorder(
  borderType: BorderType.RRect,
  color:  Color(0xFFD2D2D2),
  radius: Radius.circular(10),
  strokeWidth: 1,
 dashPattern: [8, 4],
  //padding: EdgeInsets.all(6),
  child: Container(
      child: Center(
        child: Container(
         //margin: EdgeInsets.fromLTRB(0, 0, 5, 5),
          padding:EdgeInsets.fromLTRB(1.34, 1.34, 1.34, 1.34),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFD2D2D2)),
              borderRadius: BorderRadius.circular(8),
            ),),
          child:Icon(Icons.add, color: Colors.grey,size: ScreenUtil().setSp(20)) ,
        )
        
      ),
    ),
    );
  }
}