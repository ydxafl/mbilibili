
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mbilibili/value/color.dart';
import 'package:mbilibili/value/icon.dart';

class MineMainPage extends StatelessWidget {
  const MineMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity,220.h ),
        child: Column(
          children: [
            Container(
              height: Size.fromHeight(MediaQueryData.fromWindow(window).padding.top).height,
              color: ColorValues.themeColor[500],
            ),//bar
            Container(
              height: 30.h,
              color: ColorValues.themeColor[500],
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  Container(
                    child: const Icon(Icons.devices_other),
                    margin: EdgeInsets.only(right: 20.w),
                  ),
                  Container(
                    child: const Icon(Icons.videogame_asset),
                    margin: EdgeInsets.only(right: 20.w),
                  ),
                  Container(
                    child: const Icon(Icons.email_outlined),
                    margin: EdgeInsets.only(right: 20.w),
                  ),
                  Container(
                    child: const Icon(Icons.monitor),
                    margin: EdgeInsets.only(right: 20.w),
                  ),
                ],
              ),
            ),//30
            Container(
              alignment: Alignment.center,
              height: 80.h,
              color: ColorValues.themeColor[500],
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.w),
                    height: 60.h,
                    width: 60.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(70.r)),
                        color: ColorValues.themeColor[700]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.w),
                    child: Text('点击登录',style: TextStyle(fontSize: 16.sp),),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20.w),
                      alignment: Alignment.centerRight,
                      child: const Icon(Icons.navigate_next),
                    ),
                  ),
                ],
              ),
            ),//80
            Container(
              alignment: Alignment.center,
              height: 60.h,
              color: ColorValues.themeColor[500],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text('—\n动态',textAlign:TextAlign.center),
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 30.h,
                    color: ColorValues.textColor[700],
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text('—\n关注',textAlign:TextAlign.center),
                    ),
                  ),

                  Container(
                    width: 1,
                    height: 30.h,
                    color: ColorValues.textColor[700],
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text('—\n粉丝',textAlign:TextAlign.center),
                    ),
                  )
                ],
              ),
            ),//70
            Container(
              height: 50.h,
              color: ColorValues.themeColor[500],
              child: Container(
                margin: EdgeInsets.only(left: 10.w,right: 10.w),
                color: ColorValues.themeColor[700],
              ),
            ),//40
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10.h,left: 20,right: 20),
        color: ColorValues.themeColor[500],
        child: GridView.builder(
          physics:  const BouncingScrollPhysics(),//增加
          shrinkWrap: true,//增加
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio:563/450,
            crossAxisSpacing: 10.w,
          ),
          itemBuilder: (BuildContext context, int index) {
            return MineIcon(
              onTaps: (){
                debugPrint('功能${index+1}');
              },
              icon: Icon(IconValue.mine),
              lable:'功能${index+1}',
            );
          },
          itemCount: 50,
        ),
      ),
    );
  }
}

class MineIcon extends StatelessWidget {
  final icon;
  final lable;
  Function onTaps;

  MineIcon({Key? key, required this.icon,this.lable, required this.onTaps}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:  Column(
        children: [
          icon,
          Container(
            child: Text('$lable',style: TextStyle(color: ColorValues.textColor[700],fontSize: 12.sp),),
            margin: EdgeInsets.only(top: 5.h),
          ),
        ],
      ),
      onTap: (){
        onTaps();
      },
    );
  }
}
