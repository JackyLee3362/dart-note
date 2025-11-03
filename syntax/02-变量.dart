// 变量: https://dart.cn/language/variables
void main() {
  // 字符串，会被推断为 String
  var name = 'Bob';
  String name1 = 'Bob';
  Object name2 = 'Bob';
  dynamic name3 = 'Bob';
  // 空安全
  String? name4;
  assert(name4 == null); // 生产环境 assert 不执行
  // 延迟初始化
  late String desc;
  // 运行时常量 final
  final name5 = 'Bob';
  // 编译时常量 const
  const pi = 3.14;
  var foo = const [];
  foo = [1, 2, 3];
  final bar = const [];
  const baz = []; // Equivalent to `const []`
  // const 类型转换和检查
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.
  // 通配符变量(>=3.7) - 局部变量
  var _ = 1;
  var _ = "abc";
  for (var _ in list){}
  try {
    throw '!';
  } catch (_) {
    print('oops!');
  }
  // ...
}
