import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutV2App());
}

class LayoutV2App extends StatelessWidget {
  const LayoutV2App({super.key});
  @override
  Widget build(BuildContext context) {
    return testListView();
  }
}

Widget testListView() {
  return Directionality(
    textDirection: TextDirection.ltr,
    child: ListView(
      children: [
        Container(color: Colors.black12, height: 120),
        Container(color: Colors.black26, height: 120),
        Container(color: Colors.black38, height: 120),
        Container(color: Colors.black12, height: 120),
        Container(color: Colors.black26, height: 120),
        Container(color: Colors.black38, height: 120),
      ],
    ),
  );
}
