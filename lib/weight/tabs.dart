

import 'package:flutter/material.dart';
import 'package:flutter_demo/page/home_page.dart';
import 'package:flutter_demo/page/mine_page.dart';
import 'package:flutter_demo/page/near_page.dart';

class Tabs  extends StatefulWidget{



     const Tabs({Key? key}) : super(key: key);

     @override
    _TabsState createState() => _TabsState();





}


class _TabsState extends State<Tabs>{

   int _curIndex = 0;

   List _pageList = [
          HomePage(),
          NearPage(),
          MinePage(),
   ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(

         body: _pageList[_curIndex],

        bottomNavigationBar: BottomNavigationBar(
           currentIndex: _curIndex,

           onTap: (int i){
             setState((){
               _curIndex = i;

             });
           },

          iconSize: 24,

          type: BottomNavigationBarType.fixed,

          unselectedItemColor: Colors.black,

          selectedItemColor: Colors.blue,

          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.hd),
                icon:Icon(Icons.home),
                label: ("首页")
            ),

            BottomNavigationBarItem(icon: Icon(Icons.add_business_outlined),label: ("附近")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),label: ("我的")),


          ],

        ),

    );
  }



}