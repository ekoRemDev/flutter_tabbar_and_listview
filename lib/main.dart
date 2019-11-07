import 'package:flutter/material.dart';
import 'package:flutter_tabbar_and_listview/example_two.dart';

import 'FirstPage.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';
import 'example_one.dart';

void main() => runApp(new MaterialApp(
      home: MyTabs(),
    ));

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 8, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pages'),
        backgroundColor: Colors.grey[300].withOpacity(0.3),
        bottom: TabBar(
            unselectedLabelColor: Colors.green[900],
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.redAccent),
            isScrollable: true,
            controller: tabController,
            tabs: <Tab>[
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.redAccent, width: 1)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("APPS"),
                  ),
                ),
              ),
              Tab(
                icon: Icon(Icons.arrow_downward),
                text: 'two',
              ),
              Tab(
                icon: Icon(Icons.arrow_downward),
                text: 'three',
              ),
              Tab(
                icon: Icon(Icons.arrow_downward),
                text: 'four',
              ),
              Tab(
                icon: Icon(Icons.arrow_downward),
                text: 'five',
              ),
              Tab(
                icon: Icon(Icons.arrow_back),
                text: 'six',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'seven',
              ),
              Tab(
                icon: Icon(Icons.line_style),
                text: 'eight',
              ),
            ]),
      ),
      body: new TabBarView(controller: tabController, children: <Widget>[
        new First(),
        new Second(),
        new Third(),
        new First(),
        new Second(),
        new Third(),
        new ExampleOne(),
        new ExampleTwo(),
      ]),
      bottomNavigationBar: new Material(
        color: Colors.green,
        child: new TabBar(
            isScrollable: true,
            controller: tabController,
            tabs: <Tab>[
              Tab(icon: Icon(Icons.arrow_forward)),
              Tab(icon: Icon(Icons.arrow_downward)),
              Tab(icon: Icon(Icons.arrow_back)),
              Tab(icon: Icon(Icons.arrow_forward)),
              Tab(icon: Icon(Icons.arrow_downward)),
              Tab(icon: Icon(Icons.arrow_back)),
              Tab(icon: Icon(Icons.add)),
              Tab(icon: Icon(Icons.add_box)),
            ]),
      ),
    );
  }
}
