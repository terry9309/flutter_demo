import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Text"),
        ),
        body: Container(

          alignment: Alignment.topCenter,
          child: Column(

            children: const [
              Text(
                "这是字体文本这是字体文本这是字体文本这是字体文本这是字体文本这是字体文本这是字体文本这是字体文本",
                maxLines: 2,
                softWrap: true,  ///是否自动换行
                textAlign: TextAlign.start, ///对齐方式
                textScaleFactor: 1.3,  ///字体显示赔率
                overflow: TextOverflow.ellipsis, ///超出屏幕处理方式
                style:TextStyle(
                    backgroundColor: Colors.black26,
                    color: Colors.blue,
                    fontSize: 14,
                    decoration: TextDecoration.underline, ///下划线
                    decorationStyle: TextDecorationStyle.dotted,///虚线
                    wordSpacing: 2.0,
                    fontWeight: FontWeight.w900, ///字重
                    height: 2 ///行高
                ),
                /// 对齐方式：剧中
              ),
            ],
          ),
        ));
  }
}
