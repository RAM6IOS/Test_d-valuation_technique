import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoryImage extends StatelessWidget {
 StoryImage({ Key? key , required this.imagePath}) : super(key: key);

 String imagePath ;
  @override
  Widget build(BuildContext context){
    return Stack(
          children: [
          Stack(
      children: [
        Positioned(
          child: Container(
          margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(12)),
          width: ScreenUtil().setWidth(101.75),
          height: ScreenUtil().setHeight(150.35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    ),
        ),
      ],
    ),
                Positioned(
                  top: ScreenUtil().setHeight(130), // تعيين الإدراج بناءً على حجم الشاشة
              left: ScreenUtil().setWidth(37),
                  child:    Container(
                    alignment: Alignment.center,
                    width: ScreenUtil().setWidth(25.51),
          height: ScreenUtil().setHeight(30.51),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: ScreenUtil().setWidth(0.77), color: Color.fromRGBO(197, 197, 197, 1)),
                    ),
                  ),
                  child: Container(
                  child:Icon(Icons.close, color: Color.fromRGBO(197, 197, 197, 1) ,size: ScreenUtil().setSp(20),) ),
                ),
                ),
                  ],
                );
  }
}