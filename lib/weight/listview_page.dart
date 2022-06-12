import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LISTVIEW"),
      ),

      ///方式一：适合数据比较少的情况
      /* body: ListView(

        children: const [
          Text("第一条"),
          Text("第二条"),
          Text("第三条"),
        ],



      ),*/

      ///方式二：大量数据动态创建
      /*body: ListView.builder(itemBuilder: (BuildContext context,int index){

        return Text('item$index');

      },itemCount: 150),*/

      ///方式三：大量数据+分割线
      body: ListView.separated(
          itemBuilder: (BuildContext c, int index) {
            return Text('item$index');
          },
          separatorBuilder: (BuildContext c, int index) {
            return const Divider();
          },
          itemCount: 180),

    );
  }
}
