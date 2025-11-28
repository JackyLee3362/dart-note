import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Nav 教程",
      home: Scaffold(body: NavApp()),
    ),
  );
}

class NavApp extends StatelessWidget {
  const NavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("打开第二个屏幕"),
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => const SecondScreen()));
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("第二屏幕"));
  }
}
