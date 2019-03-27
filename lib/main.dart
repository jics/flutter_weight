import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter navigation',
      home:FirstScreen(),
    );

  }

}



class MessageForm extends StatefulWidget{
  @override
  State createState(){
    return _MessageFormState();
  }
}


class _MessageFormState extends State<MessageForm>{
  final editController=TextEditingController();


  // 对象被从 widget 树里永久移除的时候调用 dispose 方法（可以理解为对象要销毁了）
  // 这里我们需要主动再调用 editController.dispose() 以释放资源
  @override
  void dispose(){
     super.dispose();
     editController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child:Row(
        children:<Widget>[
          // 我们让输入框占满一行里除按钮外的所有空间


        ],

        ),
      );
  }
}

class SecondScreen extends StatefulWidget{
  @override
  State createState(){
    return _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Navigation Demo'),),
      body:Center(
        child: RaisedButton(
            child:Text('Second Screen'),
            onPressed: (){
              Navigator.pop(context,'message from second screen');
            }
        ),
      ),
    );
  }
}