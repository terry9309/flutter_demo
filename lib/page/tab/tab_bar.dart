import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {




  @override
  State<StatefulWidget> createState() => _TabBar();
}

class _TabBar extends State<TabBarPage> with SingleTickerProviderStateMixin {

  final List<String> _tabValues = ['JAVA', 'Kotlin', 'Flutter', 'Go', 'C++'];

   late TabController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TabController(length: _tabValues.length,vsync:this);
   _controller.addListener(() {

   });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("TabBar"),

        bottom: TabBar(
          tabs: _tabValues.map((e) {
            return Text(e);
          }).toList(),
          controller: _controller,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: UnderlineTabIndicator(),
          isScrollable: true,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          indicatorWeight: 2.0,
          labelStyle: const TextStyle(height: 2),
        ),
      ),


      body: TabBarView(
        controller: _controller,
        children: _tabValues.map((e) {
          return Center(
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }
}
