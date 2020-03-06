import 'package:flutter/material.dart';
import 'package:newflutter/model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home : Movie(),
       theme: ThemeData(
         primarySwatch: Colors.yellow
       ),
       debugShowCheckedModeBanner: false,
    );
  }
}

class Movie extends StatelessWidget {
  const Movie({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
         appBar : AppBar(
           title: Text("ring flutter"),
           elevation: 30.0
         ),
         body : ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context,index){
          return Container(
            color: Colors.white,
            margin: EdgeInsets.all(8.0),
            child: Column(children: <Widget>[
              Image.network(posts[index].imageUrl),
              SizedBox(height : 16.0),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subhead
              ),
              SizedBox(height:16.0)
            ],)
          );
        })
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
