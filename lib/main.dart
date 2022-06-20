// ignore_for_file: unrelated_type_equality_checks




import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/base/dartbase.dart';
import 'package:flutter_demo/weight/base_weight.dart';
import 'package:flutter_demo/weight/tabs.dart';




import 'package:permission_handler/permission_handler.dart';
//应用入口
void main()  async{

 /* //初始化插件
  WidgetsFlutterBinding.ensureInitialized();

  if(!await _requestPermissions()){
     await AppUtils.popApp();
  }else {
    runApp(const MyApp());
  }
*/


  runApp(const MyApp());

}



///申请权限
Future<bool> _requestPermissions() async {

  //申请一个或者多个权限
  Map<Permission,PermissionStatus> statuses = await [
    Permission.storage,
    Permission.camera
  ].request();

  Map<Permission,PermissionStatus> requests = await statuses.keys.toList().request();

  List<bool> results = requests.values.toList().map((status){
    return statuses == PermissionStatus.granted;
  }).toList();

  return !results.contains(false);
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
    return const MaterialApp(home: Tabs());


    /*return Scaffold(
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

    );*/
  }


}

class AppUtils {
  static Future<void> popApp() async {
    await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }
}
