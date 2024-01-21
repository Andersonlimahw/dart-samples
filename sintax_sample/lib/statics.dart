// Static n precisa ser instanciado para acessar as variáveis

import 'dart:math';

class Queue {
  // n pode acessar via instancia
  static const initialCapacity = 16;
  int size = 0;

  Queue(this.size);
}

class Point {
  double x, y;

  Point(this.x, this.y);

  static double distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;

    return sqrt(dx * dx + dy * dy);
  }
}

staticSample() {
  print('Static property: ${Queue.initialCapacity}');
  Queue queueInstance = Queue(10);
  print('Static property: ${queueInstance.size}');

  var distance = Point.distanceBetween(Point(10, 10), Point(20, 20));
  print('Static method result $distance');
}
