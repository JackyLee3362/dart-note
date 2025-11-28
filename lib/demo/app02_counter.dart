/* 有状态 Flutter Demo */

import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我的应用',
      // 主题
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: '主标题'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // MyHomePage, 有状态的对象

  // 该类是状态的配置，包含由父组件提供变量值(这里是 title),
  // 并被 State 的 build 方法使用,
  // 字段总是被标记为 final 的.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// 状态，私有类
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // 响应式，如果不通过 setState 设置 _counter 那么界面不会重新渲染
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 每次调用 setState ，该方法都会重新运行

    // Flutter 框架已经优化，使得重新运行构建方法速度更快，
    // 因此可以直接重新构建任何需要更新的内容，
    // 而无需单独更改 widget 实例。
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.amber,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        // Center 是一个布局组件，输入单个子组件，并在父组件居中
        child: Column(
          // Column 是一个布局组件，输入多个子组件列表，并垂直排列
          // 默认情况下，水平方向和父组件自适应，垂直方向上和父组件同高度
          // Column 有许多属性去控制子组件的位置
          // 这里我们使用 mainAxisAlignment 将子组件在垂直方向居中
          // 因为 Column 是垂直的，所以主轴是垂直的
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('点击组件的次数: '),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // 浮动按钮
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: '+1',
        child: const Icon(Icons.add),
      ),
    );
  }
}
