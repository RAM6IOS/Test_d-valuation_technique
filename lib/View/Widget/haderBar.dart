import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_devalution_technique/Class/WavesClipper.dart';
import 'package:test_devalution_technique/View/Scren/Profile3.dart';

class HaderBar extends StatefulWidget {
  const HaderBar({ Key? key }) : super(key: key);

  @override
  _HaderBarState createState() => _HaderBarState();
}

class _HaderBarState extends State<HaderBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
            child: Positioned(
            child:  ClipPath(
              clipper: WaveClipper(),
              child: Container(
                height: 120,
                padding: EdgeInsets.only(top: 1-0, left: 16, right: 16, bottom: 10),
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      iconSize: 20.sp,
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        // Add your back button action here
                      },
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      iconSize: 20.sp,
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        // Add your close button action here
                      },
                    ),
                  ],
                ),
                )
              ),
            ),
),

          );
  }
}