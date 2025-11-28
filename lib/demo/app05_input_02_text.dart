import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyTexts());
}

class MyTexts extends StatelessWidget {
  const MyTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Text: 选择文本'),
        SelectableText('SelectableText: 可选择的文本'),
        RichText(
          text: TextSpan(
            text: 'RichText:Hello ',
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
            labelText: 'TextField: Mascot Name',
          ),
        ),
      ],
    );
  }
}
