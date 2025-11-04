const double X = 0;
const double Y = 0;

class Point {
  final double x;
  final double y;

  // 主构造器
  Point(this.x, this.y);

  // 命名构造器
  Point.origin() : x = X, y = Y;

  // 代理给主构造器
  Point.alongXAxis(double x) : this(x, 0);
}

class ImmutablePoint {
  final double x, y;

  const ImmutablePoint(this.x, this.y);

  static const ImmutablePoint origin = ImmutablePoint(0, 0);
}

class Logger {
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = <String, Logger>{};

  // 2种情况需要用到 factory
  // 1. 获得一个已有实例
  // 2. 子类型的新实例(?)
  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

void main(List<String> args) {
  var logger = Logger('UI');
  logger.log('Button clicked');

  var logMap = {'name': 'UI'};
  var loggerJson = Logger.fromJson(logMap);
}
