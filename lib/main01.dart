import 'package:flutter/material.dart';
import 'newroute.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.red),
      home:Increase()
    );
  }
  
}

class Increase extends StatefulWidget {
  Increase({Key key}) : super(key: key);
  @override
  _IncreaseState createState() => _IncreaseState();
}

class _IncreaseState extends State<Increase> {

  int _count = 0;
  void _createNum(){
    setState(() {
      _count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ring First Flutter Demo'),
        ),
        body: Center(
          child:Column(children: <Widget>[
            Text("tap times"),
            Text("$_count"),
            FlatButton(
              onPressed: (){
                //导航到新路由
                Navigator.push(context, 
                MaterialPageRoute(
                  builder:(context){
                    return NewRoute();
                }
                )
                );
                },
              child: Text("open new page"),
              textColor: Colors.blue
              )
          ],)
        ),
        floatingActionButton: FloatingActionButton(onPressed: _createNum,child: Icon(Icons.add))
      );
  }
}


