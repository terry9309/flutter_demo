import 'package:flutter/material.dart';

class StackPage extends StatefulWidget{


  const StackPage({Key? key}) : super(key: key);



  @override
  State<StatefulWidget> createState() {
    return StackPageState();
  }




}


class StackPageState extends State<StackPage>{

  var _index =0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: const Text("Stack"),),


     body: Column(
       children: [
           Stack( //层叠布局 类似帧布局
             children: [
               Container(
                 height: 100,
                 width: 100,
                 color: Colors.yellow,
               ),
               Container(
                 height: 90,
                 width: 90,
                 color: Colors.red,
               ),
               Container(
                 height: 60,
                 width: 60,
                 color: Colors.blue,
               )
             ],
           ),
         
         
          const SizedBox(
            height: 20,
          ),
         
         
         IndexedStack(
            index:_index ,
           
           children: [
             Center(
               child: Container(
                   height: 200,
                   width: 200,
                   color: Colors.deepOrangeAccent,
                   alignment: Alignment.center,
                   child:const Icon(
                     Icons.accessibility,
                     size: 60,
                     color: Colors.blue,
                   ),
                   
                 ),
               ),

             Center(
               child: Container(
                 height: 200,
                 width: 200,
                 color: Colors.green,
                 alignment: Alignment.center,
                 child:const Icon(
                   Icons.add_box,
                   size: 60,
                   color: Colors.blue,
                 ),

               ),
             ),


             Center(
               child: Container(
                 height: 200,
                 width: 200,
                 color: Colors.redAccent,
                 alignment: Alignment.center,
                 child:const Icon(
                   Icons.save,
                   size: 60,
                   color: Colors.blue,
                 ),

               ),
             ),

           ],
           
           
           
           
         ),

         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             IconButton(onPressed: (){
               setState((){
                 _index = 0;
               });

             }, icon: const Icon(Icons.accessibility,color: Colors.yellow,)),

             IconButton(onPressed: (){
               setState((){
                 _index = 1;
               });
             }, icon: const Icon(Icons.add_box,color: Colors.yellow)),


             IconButton(onPressed: (){
               setState((){
                 _index = 2;
               });
             }, icon: const Icon(Icons.save,color: Colors.yellow))
           ],
         )
         
         
         
       ],
     ),

   );
  }

}