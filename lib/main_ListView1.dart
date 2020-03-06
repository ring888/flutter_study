import 'package:flutter/material.dart';
import 'package:newflutter/model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home : Scaffold(
         appBar : AppBar(
           title: Text("ring flutter"),
           elevation: 30.0
         ),
         body : Movie()
       ),
       theme: ThemeData(
         primarySwatch: Colors.yellow
       ),
       debugShowCheckedModeBanner: false,
    );
  }
}

class Movie extends StatelessWidget {
  const Movie({Key key}) : super(key: key);
  List<Widget> _postData(){
    var list = posts.map((value){
      return Text(value.title);
    });
    return list.toList();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: _postData())
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "Hello",
      textDirection: TextDirection.ltr,
      style: TextStyle(
          fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.black87),
    ));
  }
}
