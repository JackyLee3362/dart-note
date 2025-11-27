void main(List<String> args) {
  int number = 1;
  switch (number) {
    // Constant pattern matches if 1 == number.
    case 1:
      print('one');
  }
  const a = 'a';
  const b = 'b';
  var obj = ['a', 'b'];
  switch (obj) {
    // List pattern [a, b] matches obj first if obj is a list with two fields,
    // then if its fields match the constant subpatterns 'a' and 'b'.
    case [a, b]:
      print('$a, $b');
  }
  testDestructuring();
}

testDestructuring() {
  print("解构 - Destructuring");
  var numList = [1, 2, 3];
  // List pattern [a, b, c] destructures the three elements from numList...
  var [a, b, c] = numList;
  // ...and assigns them to new variables.
  print(a + b + c);

  var list = ['a', 3];
  switch (list) {
    case ['a' || 'b', var c]:
      print(c);
  }
}

testDestructuringV2() {
  var (a, [b, c]) = ('str', [1, 2]);
}

testForInLoop() {
  Map<String, int> hist = {'a': 23, 'b': 100};

  for (var MapEntry(key: key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }
  // 简写
  for (var MapEntry(:key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }
}
