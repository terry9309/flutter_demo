import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/ToastUtil.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold", style: TextStyle(color: Colors.black26)),

        titleSpacing:2,///横轴上标题内容 周围的间距。即使没有前导内容或操作，也会应用此间距。如果希望 title占用所有可用空间，请将此值设置为0.0

        ///返回按钮
        leading: IconButton(
          icon: const Icon(Icons.access_time_sharp,color: Colors.black26,),
          onPressed: () {
            Navigator.of(context).pop(1);
          },
        ),




        backgroundColor: Colors.white, ///背景色
        elevation: 0.1,///阴影

        ///右侧按钮
        actions: [
          IconButton(
            icon: const Icon(Icons.access_time_sharp,color: Colors.black26,),
            onPressed: () {
              // ToastUtil.toastShort("右侧按钮");
            },
          ),
        ],

      ),


      body: Container(
        color: Colors.cyanAccent,
    ),

    );
  }
}
