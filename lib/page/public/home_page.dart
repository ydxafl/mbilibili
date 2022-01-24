
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mbilibili/controller/main_page_controller.dart';
import 'package:mbilibili/page/buy/buy_main_page.dart';
import 'package:mbilibili/page/home/home_main_page.dart';
import 'package:mbilibili/page/mine/mine_main_page.dart';
import 'package:mbilibili/page/trend/trend_main_page.dart';
import 'package:mbilibili/value/color.dart';
import 'package:get/get.dart';
import 'package:mbilibili/value/icon.dart';

import 'index_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final pages = [const HomeMainPage(),const TrendMainPage(),Container(), const BuyMainPage(),const MineMainPage()];
  final controller = Get.put(MainPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>IndexedStack(
        index:controller.currentIndex.value,
        children: pages,
      )),
      bottomNavigationBar: Obx(()=>Stack(
        children: [
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed, // BottomNavigationBarType 中定义的类型，有 fixed 和 shifting 两种类型
            iconSize: 18.w, // BottomNavigationBarItem 中 icon 的大小
            currentIndex: controller.currentIndex.value, // 当前所高亮的按钮index
            onTap: controller.onItemTapped, // 点击里面的按钮的回调函数，参数为当前点击的按钮 index
            fixedColor: ColorValues.themeColor[700], // 如果 type 类型为 fixed，则通过 fixedColor 设置选中 item 的颜色
            selectedFontSize: 10.sp,
            unselectedFontSize: 9.sp,
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(label: "首页", icon: Icon(IconValue.home),),
              BottomNavigationBarItem(label: "动态", icon: Icon(IconValue.trend),),
              BottomNavigationBarItem(label: "", icon: Icon(IconValue.trend,size:0.w ,),),
              BottomNavigationBarItem(label: "会员购", icon:  Icon(IconValue.buy),),
              BottomNavigationBarItem(label: "我的", icon:  Icon(IconValue.mine),activeIcon: Icon(IconValue.buy)),
            ],
          ),
          Positioned(
            right: 162.5.w,
            left: 162.5.w,
            bottom: 12.h,
            height: 30.w,
            child: InkWell(
              child: Icon(Icons.add_box,color:ColorValues.themeColor[700],size: 35.w,),
              onTap: (){
                controller.onAddTap();
              },
            ),
          )
        ],
      )),
    );
  }

}
