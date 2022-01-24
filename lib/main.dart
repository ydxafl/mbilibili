import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbilibili/route/route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mbilibili/value/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375,680),
      builder:()=>GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: ColorValues.theme,
        ),
        initialRoute: RouteName.index,
        getPages: getPages,
      )
    );
  }
}

