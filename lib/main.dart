import 'package:flutter/material.dart';
import 'package:flutter_demo/base/dartbase.dart';
import 'package:flutter_demo/weight/base_weight.dart';

//应用入口
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
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
