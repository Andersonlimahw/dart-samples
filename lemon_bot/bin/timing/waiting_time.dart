class BotClock {
  Future clock({required int timeInSeconds}) {
    return Future.delayed(Duration(seconds: timeInSeconds));
  }

  //Creating:
  Stream lemonStream(int intervalIsSeconds, int maxCount) async* {
    int index = 1;
    while (index < maxCount) {
      print(
          'Contador: $index, intervalo em segundos: $intervalIsSeconds, limite de tempo: $maxCount segundos');
      await Future.delayed(Duration(seconds: intervalIsSeconds));
      yield index++; // Yield significa captura.
    }
    print('The stream is finished!');
  }
}
