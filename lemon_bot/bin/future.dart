main() {
  Future myFuture = Future(() {
    print('Backing to the future.');
    return 21;
  })
      .then((value) => print('Future value: $value'))
      .onError((error, stackTrace) => print('Error $error, trace $stackTrace'));

  Future.delayed(Duration(seconds: 2));

  Future<int> myFunctionFuture() async {
    print('myFunctionFuture');
    await Future.delayed(Duration(seconds: 2));
    await myFuture;
    return 22;
  }

  Future<int> myFunctionFutureError(int a, int b) async {
    try {
      if (a > b) {
        throw Exception('Input a $a , $b Error a should be less then b');
      }
      print('myFunctionFuture error');
      await Future.delayed(Duration(seconds: 2));
      return a + b;
    } catch (error) {
      print('Input a $a , $b Error $error');
      return a;
    } finally {
      print('Finally');
    }
  }

  myFunctionFuture();
  myFunctionFutureError(5, 2)
      .then((value) => print('myFunctionFutureError value: $value'))
      .onError((error, stackTrace) => print('Error $error, trace $stackTrace'));

  print('Done main!');
}
