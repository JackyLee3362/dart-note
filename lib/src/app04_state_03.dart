import 'dart:developer' show log;

import 'package:flutter/material.dart';

class MyStateV3 extends StatefulWidget {
  const MyStateV3({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyStateV3();
  }
}

class _MyStateV3 extends State<MyStateV3> {
  String data = "foo";

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      data: data,
      child: Column(
        children: [
          const HomePage(),
          const HomePageV2(),
          TextButton(
            onPressed: () {
              setState(() {
                data += "bar";
              });
            },
            child: Text("update data"),
          ),
        ],
      ),
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  const MyInheritedWidget({
    super.key,
    required this.data,
    required super.child,
  });

  // 共享数据
  final String data;

  // 定义静态方法，方便子控件获取共享数据
  static MyInheritedWidget of(BuildContext context) {
    // 该方法会寻找最近的 MyStateV3 的祖先
    // 当子控件依赖了我们的数据源，数据变动会触发子控件的 didDependencies 方法
    final result = context
        .dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
    // assert(result != null, "context 中没找到数据");
    return result!;
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    // 返回 true 时才会通知子组件
    // return data != oldWidget.data;
    return true;
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MyInheritedWidget.of(context).data;
    return Text(data);
  }
}

class HomePageV2 extends StatefulWidget {
  const HomePageV2({super.key});

  @override
  State<HomePageV2> createState() => _HomePageV2State();
}

class _HomePageV2State extends State<HomePageV2> {
  @override
  void didChangeDependencies() {
    log("enter didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    log("enter child build");
    // 获取数据
    var data = MyInheritedWidget.of(context).data;
    return Text(data);
  }
}
