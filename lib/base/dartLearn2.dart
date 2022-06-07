

import 'dart:ffi';

///  Dart 中的操作符
void main(){

  String  a = "5";

  int  aInt = int.parse(a); //String 转 int

  print(aInt);
  String aString = aInt.toString(); // 转String
  print(aString);


  /// 类型判断
  print(aInt is int); //类型判断



   String l="";
   print(l.length);

}