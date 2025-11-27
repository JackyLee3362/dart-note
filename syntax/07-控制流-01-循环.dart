void main() {
  // for 循环
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  // 增强 for 循环
  var nums = [1, 2, 3];
  for (final n in nums) {
    print(n);
  }
  for (var n in nums) {
    print(n);
  }
  // forEach 循环
  nums.forEach(print);

  // while 循环
  while (true) {
    break;
  }
  // do-while 循环
  do {} while (false);
}

// 不建议
testGoto() {
  // continue labels
  outerLoop:
  for (var i = 1; i <= 3; i++) {
    for (var j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        continue outerLoop;
      }
      print('i = $i, j = $j');
    }
  }
  // break labels
  var i = 1;
  outerLoop:
  while (i <= 3) {
    var j = 1;
    while (j <= 3) {
      print('i = $i, j = $j');
      if (i == 2 && j == 2) {
        break outerLoop;
      }
      j++;
    }
    i++;
  }
  print('outerLoop exited');
}
