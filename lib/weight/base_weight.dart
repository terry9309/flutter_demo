import 'package:flutter/material.dart';
import 'package:flutter_demo/weight/button_page.dart';
import 'package:flutter_demo/weight/image_page.dart';
import 'package:flutter_demo/weight/list_title_page.dart';
import 'package:flutter_demo/weight/listview_page.dart';
import 'package:flutter_demo/weight/row_column_page.dart';
import 'package:flutter_demo/weight/scaffoldpage.dart';
import 'package:flutter_demo/weight/text_field_page.dart';
import 'package:flutter_demo/weight/textpage.dart';

class BaseWeight extends StatelessWidget {
  const BaseWeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("基础空控件"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          padding:const EdgeInsets.all(30),

          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const TextPage();
                      }));
                    },
                    child: const Text("Text")),

                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const ScaffoldPage();
                          }));
                    },
                    child: const Text("Scaffold")),


                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const ImagePage();
                          }));
                    },
                    child: const Text("Image")),

                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const ButtonPage();
                          }));
                    },
                    child: const Text("Button")),


                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const ListViewPage();
                          }));
                    },
                    child: const Text("ListView")),


                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const ListTitlePage();
                          }));
                    },
                    child: const Text("ListTitle")),



                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return  RowColumnPage();
                          }));
                    },
                    child: const Text("RowColumn")),

                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return  TextFiledPage();
                          }));
                    },
                    child: const Text("TextFiled"))
              ],
            ),
          ),
        ));
  }
}
