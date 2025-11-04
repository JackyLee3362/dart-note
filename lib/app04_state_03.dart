import 'package:flutter/material.dart';

class MyCounterV3 extends InheritedWidget {
  const MyCounterV3({super.key, required this.data, required super.child});

  final String data;

  static MyCounterV3 of(BuildContext context) {
    // 该方法会寻找最近的 MyCounterV3 的祖先
    final result = context.dependOnInheritedWidgetOfExactType<MyCounterV3>();
    assert(result != null);
    return result!;
  }

  @override
  bool updateShouldNotify(MyCounterV3 oldWidget) => data != oldWidget.data;
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data = MyCounterV3.of(context).data;
    return Scaffold(body: Center(child: Text(data)));
  }
}
