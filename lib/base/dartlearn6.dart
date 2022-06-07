///构造方法

class Point{

  ///dart 中定义的变量默认是public 属性的，并且自动会生成set ,get 方法；
  late int x;
  late int y;

  late int _z;

  ///构造方法 自动会将值设置给x,y
  Point(this.x,this.y){

    print("x:$x");
    print("y:$y");
  }


}



void main(){


  Point p = Point(1, 2);

  p.x =4;
  print("赋值后：${p.x}");

  p._z = 6;
  print(p._z);
}