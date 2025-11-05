import 'dart:developer' show log;

import 'package:flutter/material.dart';

class MySharedCounterV3 extends InheritedWidget {
  const MySharedCounterV3({
    super.key,
    required this.data,
    required super.child,
  });

  // 共享数据
  final int data;

  // 定义静态方法，方便子控件获取共享数据
  static MySharedCounterV3 of(BuildContext context) {
    // 该方法会寻找最近的 MyCounterV3 的祖先
    // 当子控件依赖了我们的数据源，数据变动会触发子控件的 didDependencies 方法
    final result = context
        .dependOnInheritedWidgetOfExactType<MySharedCounterV3>();
    // assert(result != null);
    return result!;
  }

  @override
  bool updateShouldNotify(MySharedCounterV3 oldWidget) {
    // 返回 true 时才会通知子组件
    return data != oldWidget.data;
  }
}

class HomeScreenV2 extends StatefulWidget {
  const HomeScreenV2({super.key});

  @override
  _HomeScreenV2State createState() => _HomeScreenV2State();
}

class _HomeScreenV2State extends State<HomeScreenV2> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log("enter didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    log("enter child build");
    final data = MySharedCounterV3.of(context).data;
    return const Placeholder(color: Colors.black);
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data = MySharedCounterV3.of(context).data;
    return Scaffold(body: Center(child: Text('$data')));
  }
}

class TestInheritedWidgetState extends State<HomeScreenV2> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MySharedCounterV3(
        data: count,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeScreenV2(),
            TextButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Text('add'),
            ),
          ],
        ),
      ),
    );
  }
}
