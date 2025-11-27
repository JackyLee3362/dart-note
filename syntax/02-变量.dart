// 变量: https://dart.cn/language/variables

void main() {
  testString();
  testMisc();
  testConst();
  testTypeCase();
  testWild();
}

void testString() {
  // 字符串，会被推断为 String
  var var1 = 'Bob';
  assert(var1 is String);
  assert(var1.runtimeType == String);

  String var2 = 'Bob';
  assert(var2 is String);

  Object var3 = 'Bob';
  assert(var3 is String);

  dynamic var4 = 'Bob';
  assert(var4 is String);
}

void testMisc() {
  // 空安全
  String? var1;
  assert(var1 is String?);

  // 生产环境 assert 不执行
  assert(var1 == null);

  // 延迟初始化
  late String desc;
}

void testConst() {
  // 运行时常量 final
  final var1 = 'Bob';

  // 编译时常量 const
  const pi = 3.14;
  var foo = const [];
  foo = [1, 2, 3];
  final bar = const [];
  const baz = []; // 等价于 const []
}

void testTypeCase() {
  // const 类型转换和检查
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // 类型转换
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.
}

void testWild() {
  // 通配符变量(>=3.7) - 局部变量
  const list = [1, 2, 3];
  var _ = 1;
  var _ = "abc";
  for (var _ in list) {}
  try {
    throw '!';
  } catch (_) {
    print('oops!');
  }
  // ...
}
