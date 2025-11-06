import 'package:flutter/material.dart';

class LayoutV1Demo extends StatelessWidget {
  const LayoutV1Demo({super.key});
  @override
  Widget build(BuildContext context) {
    // return testCenter();
    // return testContainerPadding();
    // return testRow();
    // return testMultiColumnInRow();
    return testMultiColumnInExpandedRow();
  }
}

Widget testCenter() {
  return Center(
    // padding: EdgeInsets.all(16.0),
    child: Container(color: Colors.black12, width: 120, height: 80),
  );
}

Widget testContainerPadding() {
  return Container(
    padding: EdgeInsets.all(16),
    child: Container(color: Colors.black12, width: 120, height: 80),
  );
}

Widget testRow() {
  return Row(
    textDirection: TextDirection.ltr,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(color: Colors.black12, width: 120, height: 80),
      Container(color: Colors.black26, width: 120, height: 80),
      Container(color: Colors.black38, width: 120, height: 80),
    ],
  );
}

Widget testMultiColumnInRow() {
  return Row(
    textDirection: TextDirection.ltr,
    children: [
      Column(
        children: [
          Container(color: Colors.black12, width: 120, height: 80),
          Text("Dash 1", textDirection: TextDirection.ltr),
        ],
      ),
      Column(
        children: [
          Container(color: Colors.black26, width: 120, height: 80),
          Text("Dash 2", textDirection: TextDirection.ltr),
        ],
      ),
      Column(
        children: [
          Container(color: Colors.black38, width: 120, height: 80),
          Text("Dash 3", textDirection: TextDirection.ltr),
        ],
      ),
    ],
  );
}

Widget testMultiRowInColumn() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        textDirection: TextDirection.ltr,
        children: [
          Container(color: Colors.black12, width: 120, height: 80),
          Text("Dash 1", textDirection: TextDirection.ltr),
        ],
      ),
      Row(
        textDirection: TextDirection.ltr,
        children: [
          Container(color: Colors.black26, width: 120, height: 80),
          Text("Dash 2", textDirection: TextDirection.ltr),
        ],
      ),
      Row(
        textDirection: TextDirection.ltr,
        children: [
          Container(color: Colors.black38, width: 120, height: 80),
          Text("Dash 3", textDirection: TextDirection.ltr),
        ],
      ),
    ],
  );
}

Widget testMultiColumnInExpandedRow() {
  return Row(
    textDirection: TextDirection.ltr,
    children: [
      Expanded(
        child: Column(
          children: [
            Container(color: Colors.black12, width: 120, height: 80),
            Text("Dash 1", textDirection: TextDirection.ltr),
          ],
        ),
      ),
      Expanded(
        flex: 2,
        child: Column(
          children: [
            Container(color: Colors.black26, width: 120, height: 80),
            Text("Dash 1", textDirection: TextDirection.ltr),
          ],
        ),
      ),
      Expanded(
        child: Column(
          children: [
            Container(color: Colors.black38, width: 120, height: 80),
            Text("Dash 2", textDirection: TextDirection.ltr),
          ],
        ),
      ),
    ],
  );
}
