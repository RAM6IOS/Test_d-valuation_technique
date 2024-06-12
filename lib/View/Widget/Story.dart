
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_devalution_technique/View/Widget/addStoryButton.dart';
import 'package:test_devalution_technique/View/Widget/storyImage.dart';

class Story extends StatefulWidget {
  const Story({ Key? key }) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}
class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Container(
          width: ScreenUtil().setWidth(326.75),
          height: ScreenUtil().setHeight(160.24),
          margin:EdgeInsets.fromLTRB(ScreenUtil().setHeight(24), 0, ScreenUtil().setHeight(24), ScreenUtil().setHeight(11.9)),
            padding:EdgeInsets.fromLTRB(ScreenUtil().setHeight(2), 0, ScreenUtil().setHeight(2), 0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StoryImage( imagePath:'image/skye.png'),
                SizedBox(width: 8),
                StoryImage(imagePath:'image/mosce.png'), 
                SizedBox(width: 8),
                Container(
                  margin:EdgeInsets.fromLTRB(0, 0, 0, ScreenUtil().setHeight(6)),
                  width: ScreenUtil().setWidth(95.75),
          height: ScreenUtil().setHeight(150.35),
                  child: AddStoryButton(),) ,
              ],
            ),
          );
  }
}