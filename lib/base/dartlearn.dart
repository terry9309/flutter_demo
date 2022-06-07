import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  /**
   *   变量声明 ，变量一旦被声明 并赋值就确定好数据类型， 不能更改为其他数据类型
   */
  var t = 1000;
  //t = "terry";
  print(t);

  /**
   *  dynamic 声明的变量，可以更改数据类型；
   */
  dynamic z = "terry";
  z = 10000;
  print(z);

  /**
   *  final 与 const 的区别： final 为运行期常量   ， const 为编译期常量  const 运行效率高
   */

  /**
   *  Dart 中的内置数据类型：
   *
   *  数值类型：num     dart 中只有 int ,double 两种类型
   *  字符串：String
   *  布尔：bool
   *
   */

  /**
   * 字符串
   */
  String str = "Terry ";

  //字符串拼接
  String newStr = str + "is ";
  print(newStr);

  //推荐使用
  String newStr2 = "$str is";
  print(newStr2);

  // 单引号 申明字符串
  String s = 'ssss';
  String newS = '"s"'; //组合使用
  print(newS);

  //多行字符串声明
  String newS1 = """ ssssssss
           ssssss
           sssss
           ssss
           ttttt""";
  print(newS1);

  /**
   *  List 数组
   */
  List<String> list = [];
  List<int> listInt = [1, 2, 3, 4];

  //index 获取数据
  int item = listInt[0];
  print(item);

  //遍历数组
  for (var o in listInt) {
    print(o);
  }

  // 遍历数组 for -i
  for (var i = 0; i < listInt.length; i++) {
    print(listInt[i]);
  }

  //list 对象不可变
  const List<int> listInt1 = [1, 2, 3];
  // listInt1.add(4); //添加的时候报错：Cannot add to an unmodifiable list

  /**
   *  Map
   */

  //声明Map
  Map<int, int> map = {1: 1, 2: 2};
  print("map:${map[1]}"); //取值；

  //添加数据
  map[3] = 100;
  print("map3:${map[3]}");


  print("map3:${map[4]}"); //若没有这个元素，返回null

   var keys = map.keys;
   //map 的遍历
   map.forEach((key, value) {
     print("key:$key,value:$value");
   });
}
