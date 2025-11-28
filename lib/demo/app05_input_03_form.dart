import 'dart:developer';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: "MyFlutter",
      home: Scaffold(appBar: AppBar(), body: MyForm()),
    ),
  );
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<StatefulWidget> createState() => _MyForm();
}

class _MyForm extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(hintText: "请输入用户名"),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "请填写文本";
              } else if (value.length < 3) {
                return "用户名过短";
              }
              return null;
            },
          ),
          TextFormField(decoration: const InputDecoration(hintText: "请输入密码")),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  log("输入非法");
                  // Process data.
                }
                log('提交中...');
              },
              child: Text("提交"),
            ),
          ),
        ],
      ),
    );
  }
}
