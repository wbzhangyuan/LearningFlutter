import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("你好")),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
          "我是一个自定义组件",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 40,
            color: Colors.red,
            //color: Color.fromRGBO(244, 233, 121, 0.5)
          ),
        ),
      );
  }
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
 @override
 Widget build(BuildContext context) {
   return ;
 }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}