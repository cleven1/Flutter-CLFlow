import 'package:flutter/material.dart';
import 'CLFlow.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '九宫格图片',
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              title: Text('九宫格'),
              bottom: TabBar(
                isScrollable: true,
                tabs: <Widget>[
                  Tab(text: '九张图',icon: Icon(Icons.home),),
                  Tab(text: '六张图',icon: Icon(Icons.hot_tub),),
                  Tab(text: '四张图',icon: Icon(Icons.person),),
                  Tab(text: '三张图',icon: Icon(Icons.person_pin),),
                  Tab(text: '一张图',icon: Icon(Icons.search),),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Center(child: getFlowContainer(9),),
                Center(child: getFlowContainer(6),),
                Center(child: getFlowContainer(4),),
                Center(child: getFlowContainer(3),),
                Center(child: getFlowContainer(1),),
              ],
            ),
          ),
        ),
    );
  }

  getFlowContainer(int count){
    List<Container> list = [];
    for (var i = 0; i < count; i++) {
      list.add(Container(color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1.0),));
    }
    return CLFlow(
            count: count,
            children: list,
          );
  }
}
