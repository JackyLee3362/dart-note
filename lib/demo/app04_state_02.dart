import 'package:flutter/material.dart';

void main() {
  runApp(const MyStateV2App());
}

class MyStateV2App extends StatefulWidget {
  const MyStateV2App({super.key});

  @override
  State<StatefulWidget> createState() => _MyStateV2();
}

class _MyStateV2 extends State<MyStateV2App> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 共享数据
        MyCounter(count: count),
        MyCounter(count: count + 1),
        TextButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text("click"),
        ),
      ],
    );
  }
}

class MyCounter extends StatelessWidget {
  final int count;
  const MyCounter({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Text("$count");
  }
}
