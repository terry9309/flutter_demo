///  Dart 中的可选位置参数

///可选位置参数
void fun([int i = 1, int j = 2]) {
  print(i);

  print(j);
}

///可选命名参数
void fun1({int i = 2, int j = 3}) {
  print(i);
  print(j);
}

void main() {
  //这里只传一个参数10 会自动赋值为第一个参数
  fun(10);

  fun1(j: 5);
}
