class BotClock {
  Future clock({required int timeInSeconds}) {
    return Future.delayed(Duration(seconds: timeInSeconds));
  }

  //Creating:
  Stream lemonStream(int intervalIsSeconds, int maxCount) async* {
    int index = 1;
    while (index < maxCount) {
      print(
          'Counting: $index, interval: $intervalIsSeconds, maxCount: $maxCount');
      await Future.delayed(Duration(seconds: intervalIsSeconds));
      yield index++; // Yield significa captura.
    }
    print('The stream is finished!');
  }
}
