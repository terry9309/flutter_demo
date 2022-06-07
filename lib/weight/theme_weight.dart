import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){


  runApp(const ThemeWeight());
}


class ThemeWeight extends StatelessWidget{



  const ThemeWeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


      const appName = 'Theme 主题';

      return MaterialApp(
           title: appName,
           theme: ThemeData(
               primaryColor: Colors.blue,
               accentColor: Colors.red,
               textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.yellow)),
           ),

           home: const MyHomePage(title: appName),

      );

  }



  
}


///无状态
class MyHomePage extends StatelessWidget{

  final String title;
  const MyHomePage({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

     return Scaffold(
       appBar: AppBar(
         title: Text(title),
       ),

       body: Container(
           height: 300,
           alignment: Alignment.center,
           color: Theme.of(context).accentColor,
         child: const Text(
           'Hello Flutter',
         ),
       ),
     );

  }
}

