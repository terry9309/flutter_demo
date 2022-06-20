
import 'package:flutter/material.dart';

import '../base/dartbase.dart';
import '../weight/base_weight.dart';

class HomePage extends StatelessWidget{



  const HomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DartBase();
              }));


            }, child: const Text("基础语法")),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const BaseWeight();
              }));


            }, child: const Text("基础控件"))
          ],
        ),
      ),

    );
  }

}