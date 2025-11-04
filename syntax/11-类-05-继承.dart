// https://dart.cn/language/type-system
class Animal {
  // 可以让子类更换变量
  eat(covariant Animal animal) {}

  sleep() {}

  @override
  void noSuchMethod(Invocation invocation) {
    print(
      'You tried to use a non-existent member: '
      '${invocation.memberName}',
    );
  }
}

class Bird extends Animal {
  @override
  eat(Bird bird) {}
}

void main() {
  var b = Bird();
  b.sleep();
}
