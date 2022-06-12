import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/ToastUtil.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片"),
      ),
      body: ListView(children: [
        ElevatedButton(
          child: const Text("普通按钮"),
          onPressed: () {
            ToastUtil.toastShort("普通按钮");
          },
        ),
        ElevatedButton(
            onPressed: () {
              ToastUtil.toastShort("颜色按钮");
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              //背景色
              foregroundColor: MaterialStateProperty.all(Colors.black87),
              //字体颜色
              overlayColor: MaterialStateProperty.all(Colors.cyanAccent),
              //点击色
              shadowColor: MaterialStateProperty.all(Colors.amber),
              //阴影颜色
              textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 14)),
              //字体大小
              side: MaterialStateProperty.all(
                  const BorderSide(width: 2, color: Colors.blueAccent)),
              //边框
              elevation: MaterialStateProperty.all(7),
              //阴影
              minimumSize:
                  MaterialStateProperty.all(const Size(200, 100)), //最小尺寸
            ),
            child: const Text("颜色按钮")),
        ElevatedButton(
            onPressed: () {
              ToastUtil.toastShort("圆角按钮");
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                //背景色
                foregroundColor: MaterialStateProperty.all(Colors.black87),
                //字体颜色
                overlayColor: MaterialStateProperty.all(Colors.cyanAccent),
                //点击色
                shadowColor: MaterialStateProperty.all(Colors.amber),
                //阴影颜色
                textStyle:
                    MaterialStateProperty.all(const TextStyle(fontSize: 14)),
                //字体大小
                //  side: MaterialStateProperty.all(const BorderSide(width: 2,color: Colors.blueAccent)), //边框
                elevation: MaterialStateProperty.all(7),
                //阴影

                minimumSize: MaterialStateProperty.all(const Size(200, 100)),
                //最小尺寸
                shape: MaterialStateProperty.all(const CircleBorder(
                    side: BorderSide(
                        color: Colors.green, style: BorderStyle.none)))),
            child: const Text("圆角按钮")),
        ElevatedButton(
            onPressed: () {
              ToastUtil.toastShort("圆角按钮");
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                //背景色
                foregroundColor: MaterialStateProperty.all(Colors.white),
                //字体颜色
                overlayColor: MaterialStateProperty.all(Colors.cyanAccent),
                //点击色
                shadowColor: MaterialStateProperty.all(Colors.black26),
                //阴影颜色
                textStyle:
                    MaterialStateProperty.all(const TextStyle(fontSize: 14)),
                //字体大小
                //  side: MaterialStateProperty.all(const BorderSide(width: 2,color: Colors.blueAccent)), //边框
                elevation: MaterialStateProperty.all(3),
                //阴影

                minimumSize: MaterialStateProperty.all(const Size(200, 45)),
                //最小尺寸
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))))),
            child: const Text("圆角按钮"))
      ]),
    );
  }
}
