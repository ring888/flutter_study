import 'package:flutter/material.dart';
import 'package:newflutter/model/post.dart';
class Movie extends StatelessWidget {
  const Movie({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
        });
  }
}