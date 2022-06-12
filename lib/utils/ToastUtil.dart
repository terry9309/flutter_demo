

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

///  Toast 工具类

class ToastUtil{

    static ToastUtil? _instance;
    ToastUtil._();


    static ToastUtil? getInstance() {
      _instance ??= ToastUtil._();
      return _instance;
    }

    Future _cancelPreToast() async {
      await Fluttertoast.cancel();
    }


    static void toastShort(String message) {
      getInstance()!._cancelPreToast();
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor:Colors.white,
          textColor: Colors.black87,
          fontSize: 14.0);
    }


    static void toastLong(String message) {
      getInstance()!._cancelPreToast();
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor:Colors.white,
          textColor: Colors.black87,
          fontSize: 14.0);
    }

}
