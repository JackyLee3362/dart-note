import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  // FAQ
  // Q: 什么时候可以用 const?
  // A: 只有当 Widget 所有构造参数和成员变量都是 const ，且构造函数是 const 时才可以
  //    一般来说 const Foo({super.key}) 就可以
  runApp(const HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  // 等同于下式
  // const HelloWorldApp(Key key) : super(key: key);
  // 由于 key 是 final，所以在构造函数体内赋值
  const HelloWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp 标题: Hello World 应用",
      home: Scaffold(
        appBar: AppBar(title: const Text('AppBar 标题: Home Page')),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  const Text('Column内children1: HelloWorld'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      log("click");
                    },
                    child: const Text("My Button"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
