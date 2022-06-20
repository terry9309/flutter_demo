


import 'package:flutter/material.dart';

class ListTitlePage extends StatelessWidget{


  const ListTitlePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
          title: const Text("ListTitle"),
      ),

      body: ListView(
        children: [
          ListTile(
            leading: Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/case1.png'),fit: BoxFit.fill)),),


            title: const Text("标题"),

            subtitle: const Text("子标题"),

            trailing: const Icon(Icons.sort),

          ),

          ListTile(
            leading: Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/case1.png'),fit: BoxFit.fill)),),


            title: const Text("标题"),

            subtitle: const Text("子标题"),

            trailing: const Icon(Icons.sort),

          ),

          ListTile(
            leading: Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/case1.png'),fit: BoxFit.fill)),),


            title: const Text("标题"),

            subtitle: const Text("子标题"),

            trailing: const Icon(Icons.sort),

          ),

          ListTile(
            leading: Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/case1.png'),fit: BoxFit.fill)),),


            title: const Text("标题"),

            subtitle: const Text("子标题"),

            trailing: const Icon(Icons.sort),

          )
        ],


      ) ,
    );
  }


}