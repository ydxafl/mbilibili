
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mbilibili/route/route.dart';
import 'package:get/get.dart';
import 'package:mbilibili/value/color.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  var time = 5 ;
  var _timer ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     Timer.periodic( const Duration(milliseconds: 1000), (timer) {
      //1s 回调一次
       _timer = timer;
      setState(() {
        time --;
        if(time == 0){
          Get.offAllNamed(RouteName.home);
        }
      });
    });
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    if(_timer != null){
      _timer.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset('asset/image/bg_index_start.jpg',fit: BoxFit.fill,),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(right: 10.w,left: 10.w,bottom: 5.h,top: 5.h),
        margin: EdgeInsets.all(5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
        ),
        child: GestureDetector(
          child: Text('$time秒(跳过)',textAlign: TextAlign.center,),
          onTap: () {
            Get.offAllNamed(RouteName.home);
          },
        ),
      ),
    );
  }

}



