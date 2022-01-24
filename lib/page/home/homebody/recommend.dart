
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mbilibili/page/home/homebody/live.dart';
import 'package:mbilibili/value/color.dart';

class Recommend extends StatelessWidget {
  const Recommend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200.h,
          margin: EdgeInsets.only(bottom: 5.h,top: 5.h,right: 5.w,left: 5.w),

          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image:  DecorationImage(
                      image: NetworkImage('https://i2.hdslb.com/bfs/archive/cddaecf8a085b45d6a1139a1dad051d8880760d1.jpg',),
                      fit: BoxFit.fitWidth
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: ColorValues.alfa,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              Positioned(
                left: 5.w,
                bottom: 5.h,
                right: 10.w,
                child: Text('【五周年】8分钟看完160个汉服小姐姐和Lo娘！',style: TextStyle(color: ColorValues.themeColor[500]),maxLines: 1,overflow: TextOverflow.ellipsis,),
              )
            ],
          ),
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
          margin: EdgeInsets.only(left: 5.w,right: 5.w,top: 5.h),
        ),
      ],
    );
  }
}
