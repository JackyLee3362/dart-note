import 'package:flutter/material.dart';

class MyTexts extends StatelessWidget {
  const MyTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        children: [
          Text('选择文本'),
          SelectableText('选择文本'),
          RichText(
            text: TextSpan(
              text: 'Hello ',
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                  text: 'bold',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' world'),
              ],
            ),
          ),
          TextField(
            controller: TextEditingController(),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Mascot Name',
            ),
          ),
        ],
      ),
    );
  }
}
