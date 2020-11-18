import 'package:We_Recycle/Screens/Info.dart';
import 'package:We_Recycle/Screens/NewPost.dart';
import 'package:We_Recycle/Screens/Product.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'We_Recycle',
      
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink[200],
            centerTitle: true,
            title: Text("We_Recycle"),
          ),
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              Product(), NewPost(), Info()
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: Colors.pink[200],
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            text: "Product",
            icon: Icon(Icons.image),
          ),
          Tab(
            text: "New Post",
            icon: Icon(Icons.send),
          ),
          Tab(
            text: "Info",
            icon: Icon(Icons.info),
          )
        ],
      ),
    );
  }
}