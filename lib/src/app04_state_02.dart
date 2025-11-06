import 'package:flutter/material.dart';

class MyCounterV2 extends StatefulWidget {
  const MyCounterV2({super.key});

  @override
  State<StatefulWidget> createState() => _MyColumnCounter();
}

class _MyColumnCounter extends State<MyCounterV2> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        children: [
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
      ),
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
