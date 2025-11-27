import 'package:flutter/material.dart';

class MyStateV2 extends StatefulWidget {
  const MyStateV2({super.key});

  @override
  State<StatefulWidget> createState() => _MyStateV2();
}

class _MyStateV2 extends State<MyStateV2> {
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
