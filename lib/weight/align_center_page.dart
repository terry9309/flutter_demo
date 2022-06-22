import 'package:flutter/material.dart';

class AlignCenterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AlignCenterPageState();
  }
}

class AlignCenterPageState extends State<AlignCenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Align  and  center"),
      ),
      body: Column(
        children: [

          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child: const Align(
              child: Text(
                'Terry',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),

          const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Terry',
                style: TextStyle(color: Colors.green, fontSize: 20),
              )),

          const Align(
              alignment: Alignment(0.9,0.1),
              child: Text(
                'Terry',
                style: TextStyle(color: Colors.green, fontSize: 20),
              )),

          Container(
            color: Colors.red,
            child: Align(
                widthFactor: 3, //此时Align的宽度等于子控件的宽度乘以对应的factor。
                heightFactor: 4, //此时Align的高度等于子控件的高度乘以对应的factor。
                child: Container(
                   height: 50,
                   width: 50,
                   color: Colors.blue,
                ),
            ),
          ),


          const Center(
            child: Text('terry'),
          )

        ],
      ),
    );
  }
}
