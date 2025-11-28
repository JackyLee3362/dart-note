import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Tab 教程",
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    ),
  );
}

class TagApp extends StatelessWidget {
  const TagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("点击"),
        onPressed: () {
          log("click");
        },
      ),
    );
  }
}
