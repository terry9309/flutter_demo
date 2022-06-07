
void fun(Function f){



}

//定义一个类型：F 类型，这个F类型其实就是一个方法，接受两个int参数，返回Void;
typedef void F(int i,int j);


void fun2(F f){
  f(1,2);
}

void main(){


  //方法都是对象 可以赋值为 Function
  Function f = fun;
  f(); //报错


  f((int i,int j){
    return i+j;
  }); //将匿名函数作为参数 传递给f() 方法；

  fun2((i, j) { });



}