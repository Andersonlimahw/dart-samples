// REF: https://dart.dev/articles/libraries/creating-streams

import 'dart:async';

void main() async {
  //Creating:
  Stream myStream(int interval, int maxCount) async* {
    int index = interval;
    while (index <= maxCount) {
      print('Counter $index');
      Future.delayed(Duration(seconds: interval));
      yield index++; // Yield significa captura.
    }
    print('The stream is finished!');
  }

  // Subscriptions
  // Only a single subscriber, but we can use as Broadcast
  StreamSubscription myStreamSubscriber = myStream(1, 10).listen((event) {
    if (event.isEven) {}
  }, onError: (error) {
    print(error);
  }, onDone: () {
    print('Finished');
  });

  var lemonStreamSubscriber = myStream(1, 5).asBroadcastStream();

  lemonStreamSubscriber.map((event) => event).listen((event) {
    print(event);
  });

  myStreamSubscriber.resume();
  print('$myStreamSubscriber resumed');
  Future.delayed(Duration(seconds: 2));
  myStreamSubscriber.cancel();
  print('$myStreamSubscriber canceled');

  Future.delayed(Duration(seconds: 2));
  lemonStreamSubscriber.map((event) => event);
  print('$lemonStreamSubscriber canceled');
}
