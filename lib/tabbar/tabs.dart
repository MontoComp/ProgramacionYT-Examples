import 'package:alertdialog/tabbar/inicio.dart';
import 'package:alertdialog/tabbar/nav_page_provider.dart';
import 'package:alertdialog/tabbar/page1.dart';
import 'package:alertdialog/tabbar/page2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyTabBarPage extends StatefulWidget {
  MyTabBarPage({Key key}) : super(key: key);

  @override
  _MyTabBarPageState createState() => _MyTabBarPageState();
}

class _MyTabBarPageState extends State<MyTabBarPage> {
  
  TabController _controller;

  @override
  Widget build(BuildContext context) {

    var indicepage = Provider.of<NavPage>(context);

    return DefaultTabController(
      initialIndex: indicepage.page,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff000ba6),
          title: Text(
            'Navigation Tabs',
            style: TextStyle(
              fontSize: 28.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          bottom: getTabBar(),
        ),
        body: getTabBarView(),
      ),
    );
  }

  getTabBar() {
    return TabBar(
      controller: _controller,
      indicatorWeight: 3.0,
      indicatorColor: Color(0xff00AEB8),
      tabs: <Widget>[
        Tab(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Icon(
                  Icons.home,
                  size: 25.0,
                ),
              ),
              Text(
                'Inicio',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
        Tab(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Icon(
                  Icons.access_alarm,
                  size: 25.0,
                ),
              ),
              Text(
                'Page1',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
        Tab(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Icon(
                  Icons.sd_card,
                  size: 25.0,
                ),
              ),
              Text(
                'Page2',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ],
    );
  }

  getTabBarView() {
    return TabBarView(
      controller: _controller,
      children: <Widget>[
        InicioPage(),
        Page1(),
        Page2(),
      ],
    );
  }
}
