import 'package:flutter/material.dart';

typedef ValueChanged<T> = void Function(T value);

class MyCounterV4 extends StatefulWidget {
  const MyCounterV4({super.key, required this.onChanged});

  final ValueChanged<int> onChanged;

  @override
  State<MyCounterV4> createState() => _MyCounterV4State();
}

class _MyCounterV4State extends State<MyCounterV4> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
