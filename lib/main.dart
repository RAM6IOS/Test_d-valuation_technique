import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_devalution_technique/View/Scren/Profel.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false, // التصميم الأصلي يعتمد على هذا الحجم
      builder: (context ,child) => MaterialApp(
        home: Profel(),
      ),
    );
  }

}