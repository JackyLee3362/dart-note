// import 'package:meta/meta_meta.dart';

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

@Todo('Dash', 'Implement this function')
void doSomething() {
  print('Do something');
}

// @Target({TargetKind.function, TargetKind.method})
// class Todo {
//   // ···
// }
