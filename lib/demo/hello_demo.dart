import 'package:flutter/material.dart';
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