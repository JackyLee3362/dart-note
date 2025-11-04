class Animal {
  eat() {}

  @override
  void noSuchMethod(Invocation invocation) {
    print(
      'You tried to use a non-existent member: '
      '${invocation.memberName}',
    );
  }
}

class Bird extends Animal {}

void main() {
  var b = Bird();
  b.eat();
}
