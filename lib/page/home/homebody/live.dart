
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mbilibili/value/color.dart';
import 'package:mbilibili/value/icon.dart';

class Live extends StatelessWidget {
  const Live({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Text(''),
        ),
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(5.r)),
              color: ColorValues.themeColor[500]),
          padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 20.h),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),//增加
            shrinkWrap: true,//增加
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              childAspectRatio:563/450,
            ),
            itemBuilder: (BuildContext context, int index) {
              return LiveIcos(
                onTaps: (){
                  debugPrint('功能${index+1}');
                },
                icons:Icon(IconValue.mine),
                lable:'功能${index+1}',
              );
            },
            itemCount: 10,
          ),
          margin: EdgeInsets.only(left: 10.w,right: 10.w,top: 5.h),
        ),

        Container(
          margin: EdgeInsets.only(left: 10.w,right: 10.w,top: 10.h),
          child: Text('推荐直播'),
        ),

        Container(
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),//增加
            shrinkWrap: true,//增加
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10,
              childAspectRatio:563/450,
            ),
            itemBuilder: (BuildContext context, int index) {
              return const LiveCover();
            },
            itemCount: 27,
          ),
          margin: EdgeInsets.only(left: 10.w,right: 10.w,top: 5.h),
        ),
      ],
    );
  }
}


class LiveIcos extends StatelessWidget {
  final icons;
  final lable;
  Function onTaps;

  LiveIcos({Key? key, required this.icons,this.lable, required this.onTaps}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:  Column(
        children: [
          icons,
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

class LiveCover extends StatelessWidget {
  const LiveCover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
        color: ColorValues.themeColor[500]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 104.98.h,
                  decoration: const BoxDecoration(
                    image:  DecorationImage(
                      image: NetworkImage('https://i0.hdslb.com/bfs/live/user_cover/4bfeee60cece1e10cdf190a72f2da41320755f58.jpg'),
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                  ),
                ),
                Container(
                  height: 104.98.h,
                  decoration: const BoxDecoration(
                    color: ColorValues.alfa,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                  ),
                ),
                Positioned(
                  left: 5.w,
                  bottom: 3.h,
                  right: 10.w,
                  child: Row(
                    children: [
                      Expanded(child:  Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Carry大格',style: TextStyle(color: ColorValues.themeColor[500]),),
                      ),),
                      Expanded(child:  Container(
                        alignment: Alignment.centerRight,
                        child: Text('8.8万',style: TextStyle(color: ColorValues.themeColor[500]),),
                      ),),
                    ],
                  ),
                ),
              ],
            ),
        ),
          Container(
            margin: EdgeInsets.only(top: 3.h,left: 5.w,right: 5.w),
            child: Text('人少，好聊天好聊天好聊天好聊天好聊天好聊天好聊天好聊天',style: TextStyle(fontSize: 13.sp),maxLines: 1,overflow: TextOverflow.ellipsis,),
          ),
          Container(
            margin: EdgeInsets.only(top: 1.h,left: 5.w,right: 5.w),
            child: Text('视频唱见',style: TextStyle(fontSize: 11.sp,color: ColorValues.textColor[500])),
          ),
        ],
      ),

    );
  }
}

