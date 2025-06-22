import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好")),
      body: const Center(
        child: Text(
          "我是一个文本",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 40,
            color: Color.fromRGBO(244, 233, 121, 0.5)
          ),
        ),
      ),
    ),
  //一个简单的文本
  // runApp(const Center(
  //   child: Text(
  //     "我是一个文本",
  //     textDirection: TextDirection.ltr,
  //     style: TextStyle(
  //       fontSize: 40.0,
  //       color: Color.fromRGBO(244,233,121,0.5),
  //     ),
  //     ),
  ));
}
