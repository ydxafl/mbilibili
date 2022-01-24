
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toasts{

  static show(msg,{int toastLength = 0}){
    Fluttertoast.showToast(
        msg: msg,
        toastLength: toastLength == 0?Toast.LENGTH_SHORT :Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
    );
  }

}