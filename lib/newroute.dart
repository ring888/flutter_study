import 'package:flutter/material.dart';


class NewRoute extends StatelessWidget {
  const NewRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("new page")
        ),
        body: Center(
          child:Text("new page,hhaha")
        ),
    );
  }
}