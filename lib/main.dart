import 'package:flutter/material.dart';
import 'package:my_flutter_app/src/app01_helloworld.dart';
import 'package:my_flutter_app/src/app02_counter.dart';
import 'package:my_flutter_app/src/app03_layout_01.dart';
import 'package:my_flutter_app/src/app03_layout_02.dart';
import 'package:my_flutter_app/src/app04_state_01.dart';
import 'package:my_flutter_app/src/app04_state_02.dart';
import 'package:my_flutter_app/src/app04_state_03.dart';
import 'package:my_flutter_app/src/app05_input_01_button.dart';
import 'package:my_flutter_app/src/app05_input_02_text.dart';
import 'package:my_flutter_app/src/app05_input_03_form.dart';
import 'package:my_flutter_app/src/app05_input_04_segmented.dart';

void main() {
  // FAQ
  // Q: 什么时候可以用 const?
  // A: 只有当 Widget 所有构造参数和成员变量都是 const ，且构造函数是 const 时才可以
  //    一般来说 const Foo({super.key}) 就可以
  // runApp(const HelloWorldApp());
  // runApp(const CounterApp());
  // runApp(const LayoutV1Demo());
  // runApp(const LayoutV2Demo());
  // runApp(const MyCounterV1());
  // runApp(const MyCounterV2());
  // runApp(const HomeScreenV2());
  // runApp(MyButtons());
  // runApp(MyForm());
  runApp(
    MaterialApp(
      title: "MyFlutter",
      home: Scaffold(
        appBar: AppBar(),
        body: //
            MySegmentedButton(),
        // MyTexts(),
        // MyForm(),
      ),
    ),
  );
}
