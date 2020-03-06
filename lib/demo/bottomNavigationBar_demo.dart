import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {

  int _tabindex = 0;
  void _tabSwitch(int index){
    setState(() {
      _tabindex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _tabindex,
        onTap: _tabSwitch,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text("Explore")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text("History")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("List")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Me")
          ),
        ]
      );
  }
}