import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
const ImageProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    // محاذاة الصورة داخل الحاوية
    final double alignmentY = -1 + (screenHeight - 800) / 800;
    final double alignmentX = -0.4 + (screenHeight - 800) / 800;
    return Container(
              width: screenWidth * 0.394,
              height: screenWidth * 0.394,
              margin: EdgeInsets.only(
                top: screenHeight * 0.074,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle, // تأكد من أن الشكل دائري
                border: Border.all(
                  color: const Color.fromRGBO(82, 193, 255, 1), // لون الحدود
                  width: screenWidth * 0.0107, // عرض الحدود
                ),
                image: DecorationImage(
                  image: AssetImage('image/profilimage.png'), // ضع صورتك هنا
                  fit: BoxFit.cover,
                  alignment: Alignment(alignmentX, alignmentY), // محاذاة الصورة داخل الحاوية
                ),
              ),
            );
  }
}