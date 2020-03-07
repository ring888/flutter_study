import 'package:flutter/material.dart';
import '../model/post.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Container(
          color: Colors.grey[400],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "Item",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0
            ),
            ),
        ),
        Container(
          color: Colors.grey[400],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "Item",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0
            ),
            ),
        ),
        Container(
          color: Colors.grey[400],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "Item",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0
            ),
            ),
        ),
        Container(
          color: Colors.grey[400],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "Item",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0
            ),
            ),
        ),
        Container(
          color: Colors.grey[400],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "Item",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0
            ),
            ),
        ),
        Container(
          color: Colors.grey[400],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "Item",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0
            ),
            ),
        ),
        Container(
          color: Colors.grey[400],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "Item",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0
            ),
            ),
        ),
      ],
    );
  }
}


class PageViewDemo extends StatelessWidget {
  const PageViewDemo({Key key}) : super(key: key);
  Widget _pageviewBuilder(context ,index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
            ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author
              ),
            ],
          ),
          )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    /* return PageView(
      scrollDirection: Axis.vertical,//pageview 滚动方向。默认左右滚动
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          child: Text(
            "ONE",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
            ),
          alignment: Alignment(0.0,0.0),
        ),
        Container(
          color: Colors.grey[900],
          child: Text(
            "TWO",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
            ),
          alignment: Alignment(0.0,0.0),
        ),
        Container(
          color: Colors.lightBlue[900],
          child: Text(
            "THREE",
            style: TextStyle(fontSize: 32.0,color: Colors.white),
            ),
          alignment: Alignment(0.0,0.0),
        ),
      ],
    ); */

    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageviewBuilder
    );
  }
}