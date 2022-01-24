
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mbilibili/value/color.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BuyMainPage extends StatelessWidget {
  const BuyMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: ColorValues.themeColor[700],
        title: Padding(
          padding: EdgeInsets.only(top: 15.h,bottom:15.h,),
          child: Container(
            height: 28.h,
            width: MediaQuery.of(context).size.width-64,
            decoration: BoxDecoration(
                color: ColorValues.textColor[300],
                borderRadius: BorderRadius.circular(20)
            ),
            child: InkWell(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 10,right: 10),
                      child: Icon(Icons.search,color: Colors.grey,size: 14.r,)),
                  Text("搜索",style: TextStyle(color: Colors.grey,fontSize: 14.sp),)
                ],
              ),
              onTap: (){

              },
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.devices_other)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.videogame_asset)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.email_outlined)),
        ],
      ),
      body: Container(
        color: ColorValues.textColor[300],
        padding: EdgeInsets.only(left: 5.w,right: 5.w),
        child: MasonryGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          itemBuilder: (BuildContext context, int index) {
            return Goods(index: index,);
          },
          itemCount: 12,
        ),
      ),
    );
  }
}

class Goods extends StatelessWidget {

  final index;
  const Goods({Key? key,this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.h,top: 5.h),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
          color: ColorValues.themeColor[500]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 190.h + ((index % 5) * 15 ),
            decoration: const BoxDecoration(
              image:  DecorationImage(
                image: NetworkImage('https://img.alicdn.com/imgextra/i3/1049653664/O1CN01xkH96H1cw9v8Ft9t5_!!1049653664.jpg_430x430q90.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.h,left: 5.w,right: 5.w),
            child: Text('[当当网 正版书籍]三体全集共3册 刘慈欣科幻小说',style: TextStyle(fontSize: 13.sp),maxLines: 2,overflow: TextOverflow.ellipsis,),
          ),
          Container(
            padding: EdgeInsets.all(1.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: ColorValues.themeColor[-700],
            ),
            margin: EdgeInsets.only(top: 2.h,left: 5.w,right: 5.w),
            child: Text('这是标签',style: TextStyle(fontSize: 8.sp,color: ColorValues.themeColor[700],fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.only(top: 2.h,left: 5.w,right: 5.w),
            child: Text('￥120',style: TextStyle(fontSize: 15.sp,color: ColorValues.themeColor[700],fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}



