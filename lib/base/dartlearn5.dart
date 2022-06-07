
///异常处理
void test(){

  throw new Exception("1111");
}

void main() {
  try {
    test();
  } catch (e, s) {
    print(e.runtimeType); //异常的类型

    print(e);

    print(s.runtimeType); //调用栈

    print(s);
  }


  //根据不同的异常类型，处理不同的异常
  try {
    test();
  } on Exception catch (e) { //只处理Exception

  } on int catch (e) {  //只处理Int

  }
}