import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("标题"),),
      body: Column(
        children: [
          MyApp(),
          SizedBox(height: 20,),//占用高度的空格
          Circular(),
          SizedBox(height: 20,),
          MyClipOval(),
          SizedBox(height: 20,),
          LocalImage(),
        ]
      ),
    ),
  ));
}

//正常图片
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //alignment:Alignment.centerRight,//控制内容位置
        width:100,
        height: 100,
        alignment: Alignment.center,
        decoration:BoxDecoration(
          color:Colors.yellow,
        ),
        child: Image.network(
          "https://pic1.zhimg.com/v2-131b374c4756753bd1293d4434fa9878_r.jpg?source=1def8aca",
          //scale: 3,//等比例缩小图片
          //alignment: Alignment.topLeft,控制图片位置
          //fit: BoxFit.fill,//平填充
          //fit: BoxFit.fitWidth,
          //repeat: ImageRepeat.repeatX,//横向重复铺满
          width: 50,
          height: 100,
          ),
      ),
    );
  }
}


//自定义组件--圆角图片，默认方形，根据设置圆角实现
class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //alignment:Alignment.centerRight,//控制内容位置
        width:150,
        height: 150,
        margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
        alignment: Alignment.center,
        decoration:BoxDecoration(
          color:Colors.yellow,
          borderRadius: BorderRadius.circular(75),
          image: DecorationImage(
            image: NetworkImage("https://pic1.zhimg.com/v2-131b374c4756753bd1293d4434fa9878_r.jpg?source=1def8aca"),
            fit:BoxFit.fill,
            
            )
        ),
        // child: Image.network(
        //   "https://pic1.zhimg.com/v2-131b374c4756753bd1293d4434fa9878_r.jpg?source=1def8aca",
        //   //scale: 3,//等比例缩小图片
        //   //alignment: Alignment.topLeft,控制图片位置
        //   //fit: BoxFit.fill,//平填充
        //   //fit: BoxFit.fitWidth,
        //   //repeat: ImageRepeat.repeatX,//横向重复铺满
        //   width: 50,
        //   height: 100,
        //   ),
      ),
    );
  }
}



//自定义组件--圆形图片，默认椭圆，根据设置长宽实现
class MyClipOval extends StatelessWidget {
  const MyClipOval({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.network(
          "https://pic1.zhimg.com/v2-131b374c4756753bd1293d4434fa9878_r.jpg?source=1def8aca",
          fit: BoxFit.fill,//平填充
          width: 150,
          height: 150,
          ),
        ),
     );
  }
}

//加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      decoration:BoxDecoration(
        color:Colors.yellow,
      ),
      child: Image.asset("images/image.png",
      fit:BoxFit.cover),
    );
  }
}