import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("你好"),
        ),
        body:Column(
          children: [
            MyApp(),
            MyButton(),
            MyText(),
          ],
        )
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


class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,//居中
      width: 200,
      height: 40,
      //margin: EdgeInsets.all(10),//设置边距
      margin:EdgeInsets.fromLTRB(0, 20, 0, 0),
      //padding: EdgeInsets.all(4),//内边距
      //transform: Matrix4.translationValues(-100, 0,100),//位移
      //transform: Matrix4.rotationZ(4),//旋转
      //transform:Matrix4.skewY(4),//缩放变形
      decoration: BoxDecoration(//样式
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10)//圆角
      ),
      child: //Center(child:
        Text("按钮",
        style: TextStyle(color: Colors.white),
        ),
      //),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "文本测试我是一个很长很长很长很长很长很长很长很长很长很长",
        textAlign:TextAlign.left,
        maxLines:1,//最大行数
        overflow: TextOverflow.ellipsis,//溢出文本显示省略号
        //textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w800,//加粗
          fontStyle: FontStyle.italic,//倾斜
          letterSpacing: 6,//文本间隔
          decoration: TextDecoration.underline,//下划线
          decorationColor:Colors.black,//下划线颜色
          decorationStyle: TextDecorationStyle.dashed,//下划线变虚线

        ),
        ),
    );
  }
}

