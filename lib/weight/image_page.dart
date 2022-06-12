import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/ToastUtil.dart';

import 'package:permission_handler/permission_handler.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  void initState() {
    requestPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片"),
      ),
      body: ListView(
        children: [

          SizedBox(
              width: 300.0,
              height: 150.0,
              ///加载项目图片
              child: Image.asset("assets/images/2.0x/bg.png", fit: BoxFit.cover)),


      SizedBox(
        width: 300.0,
        height: 150.0,

          ///加载手机本地图片
         child: Image.file(File('/sdcard/1234.jpg'))
      ),
          
          Image.network('https://t7.baidu.com/it/u=2621658848,3952322712&fm=193&f=GIF'),



          FadeInImage.assetNetwork(placeholder: 'assets/images/ic_launcher.png',
              image: 'https://t7.baidu.com/it/u=3713375227,571533122&fm=193&f=GIF',
              width: 300,
              fit: BoxFit.fitWidth,
              ),




          //椭圆
          Center(
            child: Container(
              child: ClipOval(
                child: Image.network(
                  "https://t7.baidu.com/it/u=3713375227,571533122&fm=193&f=GIF",
                ),
              ),
            ),
          ),



      //圆角
      Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(450),
              image: const DecorationImage(
                  image: NetworkImage('https://t7.baidu.com/it/u=3713375227,571533122&fm=193&f=GIF'),
                  fit: BoxFit.cover
              )
          ),
        ),
      )
        ],
      ),
    );
  }



  ///权限请求
  void requestPermission() async {
    Permission permission = Permission.storage;
    PermissionStatus status = await permission.request();
    if (status.isPermanentlyDenied) {
      ToastUtil.toastShort("权限拒绝");
    } else {
      ToastUtil.toastShort("权限允许");
    }
  }
}
