
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbilibili/tools/toast.dart';

class MainPageController extends GetxController{

  var currentIndex = 0.obs;

  void onItemTapped(int index){
    if(index!=2){
      currentIndex.value = index;
    }else{
      onAddTap();
    }
  }

  void onAddTap(){
    Toasts.show('发不了，别挣扎了',toastLength: 1);
  }

}