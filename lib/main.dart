import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/bottomNavigationBar_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Home(),
       theme: ThemeData(
         primarySwatch: Colors.yellow,
         highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //点击按钮瞬间的背景颜色
         splashColor: Colors.white70,//水波纹颜色
       ),
       debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(
        title:Text("home page"),
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.search),
          onPressed: ()=>debugPrint("action icon pressed"),
        ),
        ],
        bottom: TabBar(
          tabs: <Widget>[
          Icon(Icons.local_florist),
          Icon(Icons.change_history),
          Icon(Icons.directions_bike),
        ],
        unselectedLabelColor: Colors.black38,//未被激活的tab标签颜色设置
        indicatorColor: Colors.black54,//tab下划线的颜色
        indicatorWeight: 1.0,//tab下划线的粗细
        indicatorSize: TabBarIndicatorSize.label,//tab下划线的长短，TabBarIndicatorSize.label意思是跟标题一样长，TabBarIndicatorSize.tab意思是跟tab一样长
        ),
        
      ),
      body: TabBarView(children: <Widget>[
          Movie(),
          Icon(Icons.change_history,size: 100.0,color: Colors.black12,),
          Icon(Icons.directions_bike,size: 100.0,color: Colors.black12,),
      ]),
      drawer: DrawerWidget(),
      bottomNavigationBar: NavigationBar()
    )
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Ring888",style:TextStyle(fontWeight: FontWeight.bold)),
              accountEmail: Text("969800232@qq.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://resources.ninghao.org/images/candy-shop.jpg"),),
              decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                  image: NetworkImage("https://resources.ninghao.org/images/childhood-in-a-picture.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(//滤镜
                    Colors.yellow[400].withOpacity(0.6),
                    BlendMode.hardLight
                    
                  )
                  )
              )
            ),
            ListTile(
              title: Text("Home",textAlign: TextAlign.right),
              trailing: Icon(Icons.home,color: Colors.black12,),
              onTap: ()=> Navigator.pop(context)
            ),
            ListTile(
              title: Text("Favorite",textAlign: TextAlign.right),
              trailing: Icon(Icons.favorite,color: Colors.black12,),
              onTap: ()=> Navigator.pop(context)
            ),
            ListTile(
              title: Text("Settings",textAlign: TextAlign.right),
              trailing: Icon(Icons.settings,color: Colors.black12,),
              onTap: ()=> Navigator.pop(context)
            ),
        ],)
        );
  }
}







