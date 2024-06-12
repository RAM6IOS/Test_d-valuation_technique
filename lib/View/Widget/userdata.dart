import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Userdata extends StatelessWidget {
const Userdata({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(
                  15.w,
                  75.h,
                  0.w,
                  8.8.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 133.w,
                      height: 35.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 21.h,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Member',
                                    style: TextStyle(
                                      color: Color(0xFF1A2E35),
                                      fontSize: 9.sp,
                                      fontFamily: 'Space Grotesk',
                                      fontWeight: FontWeight.w400,
                                      height: 0.14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: Color(0xFF1A2E35),
                                      fontSize: 9.sp,
                                      fontFamily: 'Space Grotesk',
                                      fontWeight: FontWeight.w700,
                                      height: 0.14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'since ',
                                    style: TextStyle(
                                      color: Color(0xFF1A2E35),
                                      fontSize: 9.sp,
                                      fontFamily: 'Space Grotesk',
                                      fontWeight: FontWeight.w400,
                                      height: 0.14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '6th March 2024',
                                    style: TextStyle(
                                      color: Color(0xFF1A2E35),
                                      fontSize: 9.sp,
                                      fontFamily: 'Space Grotesk',
                                      fontWeight: FontWeight.w700,
                                      height: 0.14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'Maryam.Bernoussy',
                              style: GoogleFonts.spaceGrotesk(
                                color: Color(0xFF191D31),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w700,
                                height: 0.09,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 24.w,
                      height: 3.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFF52C1FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 251, 250, 250),
                      width: 163.w,
                      height: 80.h,
                      margin: EdgeInsets.fromLTRB(
                        1.w,
                        3.h,
                        0.w,
                        0.h,
                      ),
                      child: Text(
                        'Insert a mini bio below. Share a snippet about yourself—interests, background, or achievements—to give others a quick glimpse of who you are.',
                        style: GoogleFonts.spaceGrotesk(
                          fontWeight: FontWeight.w400,
                          fontSize: 9.sp,
                          height: 1.3,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -1.h,
                      child: Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                            width: 15.w,
                            height: 15.h,
                            child: SvgPicture.asset("image/group.svg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}