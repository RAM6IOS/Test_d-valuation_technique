import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_devalution_technique/View/Widget/imageProfile.dart';
import 'package:test_devalution_technique/View/Widget/userdata.dart';

class UserInformation extends StatelessWidget {
const UserInformation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
        margin: EdgeInsets.fromLTRB(
          27.w,
          75.h,
          32.2.w,
          0.h,
        ),
        color: Color.fromRGBO(248, 248, 248, 1),
        height: 259.h,
        width: 375.w,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageProfile(),
            Userdata()
          ],
        ),
      );
  }
}