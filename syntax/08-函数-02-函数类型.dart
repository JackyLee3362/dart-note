void main(List<String> args) {
  // 函数类型
  void greet(String name, {String greeting = 'Hello'}) =>
      print('$greeting $name!');
  // 存储 greet 进变量 g 并调用
  void Function(String, {String greeting}) g = greet;
  g('Dash', greeting: 'Howdy');

  // 匿名函数
  const list = ['apples', 'bananas', 'oranges'];

  var uppercaseList = list.map((item) {
    return item.toUpperCase();
  }).toList();
  // Convert to list after mapping

  for (var item in uppercaseList) {
    print('$item: ${item.length}');
  }
}
