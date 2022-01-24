
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mbilibili/page/home/homebody/live.dart';
import 'package:mbilibili/page/home/homebody/recommend.dart';
import 'package:mbilibili/tools/toast.dart';
import 'package:mbilibili/value/color.dart';

class HomeMainPage extends StatelessWidget {
  const HomeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorValues.themeColor[500],
          title: _select(context),
          actions: [
            IconButton(
              onPressed: (){
                Toasts.show('按钮1');
              },
              icon: const Icon(Icons.devices_other),
            ),
            IconButton(
              onPressed: (){
                Toasts.show('按钮2');
              },
              icon: const Icon(Icons.videogame_asset),
            ),
            IconButton(
              onPressed: (){
                Toasts.show('按钮3');
              },
              icon: const Icon(Icons.email_outlined),
            ),
          ],
          leading: IconButton(onPressed: (){},icon: const Icon(Icons.person),),
          bottom:  PreferredSize(
            preferredSize: const Size(double.infinity,25),
            child: SizedBox(
              height: 30.h,
              child: TabBar(
                indicatorSize:TabBarIndicatorSize.label,
                unselectedLabelStyle:TextStyle(fontSize: 12.sp,color: ColorValues.textColor[700]),
                labelStyle: TextStyle(fontSize: 14.sp,color: ColorValues.themeColor[700],fontWeight: FontWeight.bold),
                unselectedLabelColor:  ColorValues.textColor[700],
                labelColor: ColorValues.themeColor[700],
                indicatorColor: ColorValues.themeColor[700],
                isScrollable: true,//允许左右滚动
                tabs: const [
                  Text('直播'),
                  Text('推荐'),
                  Text('热门'),
                  Text('追番'),
                  Text('影视'),
                  Text('新征程'),
                ],
              ),
            )
          ),
        ),
        body: const TabBarView(
          children: [
            Live(),
            Recommend(),
            Icon(Icons.mark_email_read_sharp),
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }

  Widget _select(context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h,bottom:15.h,),
      child: GestureDetector(
        onTap: (){
          Toasts.show('别搜了，我不同意这门婚事');
        },
        child: Container(
          height: 28.h,
          width: MediaQuery.of(context).size.width-64,
          decoration: BoxDecoration(
              color: ColorValues.textColor[300],
              borderRadius: BorderRadius.circular(20)
          ),
          child:  Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Icon(Icons.search,color: Colors.grey,size: 14.r,)),
              Text("搜索",style: TextStyle(color: Colors.grey,fontSize: 14.sp),)
            ],
          ),
        ),
      ),
    );
  }
}
