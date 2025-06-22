import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("你好"),

        ),
        body:const MyApp(),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            alignment: Alignment.topCenter,//配置container容器内元素的方位
            width: 200,
            height: 300,
            decoration: BoxDecoration(//容器的样式
              color: Colors.red //背景颜色
              ,border: Border.all(
                color: Colors.black,
                width: 2
                ),
              borderRadius: BorderRadius.circular(10),//配置圆角
              boxShadow: const [ //配置阴影
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                )
              ],
              gradient: LinearGradient(//线性渐变
                colors: [
                  Colors.red,Colors.blue,Colors.yellow
                ]
              )   
          ),
            child: Text(
              "nihaonihao",
              style: TextStyle(
              color: Colors.black,
              fontSize: 20
            ),
            ),
          ),
        ) ;
  }
}