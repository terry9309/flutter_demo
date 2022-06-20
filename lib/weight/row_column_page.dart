

import 'package:flutter/material.dart';

class RowColumnPage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return RowColumnPageState();
  }

}


 class RowColumnPageState extends State<RowColumnPage>{


  @override
  Widget build(BuildContext context) {

     return Scaffold(
          appBar: AppBar(
               title: const Text("RowColumnPage"),
          ),

          body: Row(
            ///主轴对齐方式  spaceEvenly :均分 类似weight   spaceBetween: 第一个向左对齐  最后一个向右对齐  column 同理
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

             //次轴对齐方式
             crossAxisAlignment: CrossAxisAlignment.start,


            children: [
              Container(
                height: 30,
                width: 30,
                color: Colors.blue,
              ),

               Container(
                 height: 50,
                 width: 50,
                 color: Colors.blue,
               ),
              Container(
                height: 70,
                width: 70,
                color: Colors.red,
              ),
              Container(
                height: 90,
                width: 90,
                color: Colors.green,
              )


            ],
          ),
     );
  }




 }