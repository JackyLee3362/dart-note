import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyStateV1App());
}

// 1. 用户点击按钮
// 2. 触发 onPressed 事件
// 3. 调用 setState 方法
// 4. setState 通知框架重建 Widget，Flutter 标记需要重建
// 5. Flutter 框架调用 build 方法
// 6. 界面刷新，显示新数据

class MyStateV1App extends StatefulWidget {
  const MyStateV1App({super.key});

  @override
  State<StatefulWidget> createState() => _MyStateV1AppState();
}

class _MyStateV1AppState extends State<MyStateV1App> {
  int count = 0;

  // 只执行一次
  @override
  void initState() {
    log("init state...");
    super.initState();
  }

  // 每次变动执行
  @override
  void didChangeDependencies() {
    log("did change dependencies...");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    log("build...");
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        children: [
          Text('Count $count'),
          TextButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Text('increment'),
          ),
        ],
      ),
    );
  }
}
