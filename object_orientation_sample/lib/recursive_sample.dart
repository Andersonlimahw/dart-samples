sample() {
  recursiveFunction(counter: 10, stopAt: 20);
}

recursiveFunction({required int counter, required int stopAt}) {
  print("I am recursive, counter is: $counter and will stopAt: $stopAt");
  if (counter >= stopAt) {
    return;
  }
  recursiveFunction(counter: counter + 1, stopAt: stopAt);
}
