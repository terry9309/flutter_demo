import 'package:flutter/material.dart';

class DartBase extends StatelessWidget {
  const DartBase({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {

    method1();

    return Scaffold(
      appBar: AppBar(
         title: const Text("Dart"),
      ),
      body:const Padding(
         padding: EdgeInsets.all(18),
         child: Center(
           child: Text(
             "Dart"
           ),
         ),
      ) ,
    );
  }




  void method1() {

    /**
     *   变量声明 ，变量一旦被声明 并赋值就确定好数据类型， 不能更改为其他数据类型
     */
    var t = 1000 ;
    //t = "terry";
    print(t);


  }


}

void main(){
  var t = 1000 ;
  //t = "terry";
  print(t);
}