import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text("凸起按钮")),
          FilledButton(onPressed: () {}, child: Text("填充按钮")),
          TextButton(onPressed: () {}, child: Text("文字按钮")),
          IconButton(onPressed: () {}, icon: Icon(Icons.star)),
          FloatingActionButton(onPressed: () {}, child: Text("浮动按钮")),
        ],
      ),
    );
  }
}
