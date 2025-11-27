import 'dart:developer';

import 'package:flutter/material.dart';

// 1. 用户点击按钮
// 2. 触发 onPressed 事件
// 3. 调用 setState 方法
// 4. setState 通知框架重建 Widget，Flutter 标记需要重建
// 5. Flutter 框架调用 build 方法
// 6. 界面刷新，显示新数据

class MyStateV1 extends StatefulWidget {
  const MyStateV1({super.key});

  @override
  State<StatefulWidget> createState() => _MyStateV1State();
}

class _MyStateV1State extends State<MyStateV1> {
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
