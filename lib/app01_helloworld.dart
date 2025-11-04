import 'package:flutter/material.dart';

class HelloWorldApp extends StatelessWidget {
  // 等同于，由于 key 是 final，所以在构造函数体内赋值
  // const HelloWorldApp(Key key) : super(key: key);
  const HelloWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World Title",
      home: Scaffold(
        appBar: AppBar(title: const Text('Home Page')),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  const Text('HelloWorld'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      print("clicked");
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
