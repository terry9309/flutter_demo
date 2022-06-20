import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class TextFiledPage extends  StatefulWidget{


  const TextFiledPage({Key? key}) : super(key: key);



  

  @override
  State<StatefulWidget> createState() {
    return _TextFiledPageState();
  }


}


class _TextFiledPageState extends State<TextFiledPage>{

  String name = "张三";
  final TextEditingController controller = TextEditingController();
  final TextEditingController _phoneNumController = TextEditingController();
  final TextEditingController _pswController = TextEditingController();


  @override
  void initState(){
    super.initState();
    
    controller.addListener(() { 
      print("你输入的内容：${controller.text}");
    });
  }

  @override
  Widget build(BuildContext context) {

  final  _focusNode = FocusNode();


    return Scaffold(
       appBar: AppBar(
           title: const Text("TextFiled"),
       ),

       body: ListView(
           children: [
             Padding(
               padding: const EdgeInsets.all(5),
               child: TextField(
                 controller: controller,

                 maxLength: 10,

                 maxLines: 1,
                 // 是否自动更正
                 autocorrect: true,
                 //是否自动对焦
                 autofocus: true,
                 //是否是密码
                 obscureText:false,
                 //键盘类型
                 keyboardType: TextInputType.text,
                 //文本对齐方式
                 textAlign: TextAlign.center,

                 //控制键盘的功能键 指enter键，比如此处设置为next时，enter键显示的文字内容为 下一项
                 textInputAction: TextInputAction.next,

                 //文本输入样式
                 style: const TextStyle(fontSize: 26.0,color: Colors.green),

                 //内容改变回调
                 onChanged: (text){},

                 //长按时弹出的菜单，有copy、cut、paste、selectAll
                 toolbarOptions: const ToolbarOptions(
                     copy: true, cut: true, paste: true, selectAll: true),

                 //内容提交时回调
                 onSubmitted: (text){},

                 //按回车时调用
                 onEditingComplete: (){
                   print("onEditingComplete");
                 },

                 //是否允许输入
                 enabled: true,

                 //焦点
                 focusNode: _focusNode,

                 //控制光标是否显示
                 showCursor:  true,

                 //光标粗细
                 cursorWidth: 3,

                 //光标圆角
                 cursorRadius: const Radius.circular(10),


                 //光标颜色
                 cursorColor: Colors.blue,

                 //装饰
                 decoration: const InputDecoration(
                     fillColor: Colors.black26,
                     filled: true,
                     //显示在输入框的左下部，用于提示用户
                     helperText: "用户",
                     helperStyle: TextStyle(color: Colors.green),
                     //输入框前面的图标 prefix在输入框的前部
                     prefixIcon: Icon(Icons.person),
                     //输入框后面的文本 注：suffix在输入框的尾部
                     suffixText: "用户名",
                     //文本样式
                     suffixStyle: TextStyle(fontSize: 14)),


                 ),



               ),

             const Divider(
               height: 1,
             ),

             const SizedBox(height: 20.0),



              PrimaryColorOverride(color: Colors.black,
                  child: TextField(
                    controller: _phoneNumController,
                    style: const TextStyle(fontSize: 18.0,letterSpacing: 4.0),
                    decoration: const InputDecoration(
                         //控制是否显示labelText auto 自动, never一直不显示,always一直显示
                         floatingLabelBehavior:  FloatingLabelBehavior.auto,
                         //显示在输入框上面
                         labelText: '手机号',
                         //文本样式
                         labelStyle: TextStyle(fontSize: 16,letterSpacing: 0)
                    ),
                    maxLines: 1,

                    keyboardType: TextInputType.number,

                    //限制用户输入的内容
                    inputFormatters: [
                         LengthLimitingTextInputFormatter(11),
                         //WhitelistingTextInputFormatter.digitsOnly
                    ],

                     enableInteractiveSelection: false,

                      onChanged: (text){},

                  )),




             ListTile(
               leading: const Text("车主", style: TextStyle(fontSize: 16.0, color: Color(0xFF787878))),
               title: Container(
                 alignment: Alignment.centerRight,
                 child: SingleChildScrollView(
                   child: TextField(
                     controller:
                     TextEditingController.fromValue(TextEditingValue(
                       // 设置内容
                         text: name,
                         // 保持光标在最后
                         selection: TextSelection.fromPosition(
                           TextPosition(
                               affinity: TextAffinity.downstream,
                               offset: name?.length ?? 0),
                         ))),

                     decoration: const InputDecoration(
                       //当输入框为空时的提示,不为空时不在显示
                       hintText: '请输入',
                       border: InputBorder.none,
                       contentPadding: EdgeInsets.symmetric(vertical: 3),
                     ),
                     textAlign: TextAlign.right,
                     style: const TextStyle(
                       color: Color(0xFFAAAAAA),
                     ),
                     autofocus: false,
                     //内容改变的回调
                     onChanged: (text) {
                       name = text;
                     },
                   ),
                 ),
               ),
             ),
             const Divider(
               height: 1,
             ),
             Container(
               height: 60,
               width: 250,
               margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
               child: const TextField(
                 decoration: InputDecoration(
                   fillColor: Color(0x30cccccc),
                   filled: true,
                   enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0x00FF0000)),
                       borderRadius: BorderRadius.all(Radius.circular(100))),
                   hintText: 'QQ号/手机号/邮箱',
                   focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Color(0x00000000)),
                       borderRadius: BorderRadius.all(Radius.circular(100))),
                 ),
               ),
             )


          ],

       ),

    );
  }




}

class PrimaryColorOverride extends StatelessWidget{

  final Color color;
  final Widget child;

  const PrimaryColorOverride({super.key, required this.color, required this.child});







  @override
  Widget build(BuildContext context) {
    return Theme(data: Theme.of(context).copyWith(
        primaryColor: color,

    ),
        child: child);
  }






}