class PointA {
  double x = 1.0;
  double y = 2.0;
  // 默认的构造器是 (1.0, 2.0)
}

class PointB {
  final double x;
  final double y;

  PointB(this.x, this.y);
  PointB.optional([this.x = 0.0, this.y = 0.0]);
}

class PointB2 {
  double _x;
  double _y;
  // 私有变量不能在命名构造器的参数中
  PointB2.namedPrivate({required double x, required double y}) : _x = x, _y = y;
}

class PointC {
  double x;
  double y;

  // Generative constructor with initializing formal parameters
  // with default values
  PointC.named({this.x = 1.0, this.y = 1.0});

  @override
  String toString() {
    return 'PointC.named($x,$y)';
  }
}

class PointD {
  double? x; // null if not set in constructor
  double? y; // null if not set in constructor

  // Generative constructor with initializing formal parameters
  PointD(this.x, this.y);

  @override
  String toString() {
    return 'PointD($x,$y)';
  }
}

// Constructor using named variables.
void main(List<String> args) {
  print(PointA());
  print(PointB(2, 3));
  print(PointB.optional());
  print(PointB2.namedPrivate(x: 1, y: 2));
  // print(PointC.()); // 没有该构造器
  print(PointC.named());
  print(PointC.named(x: 1, y: 2)); // 没有该构造器
  print(PointD(null, 1));
}
