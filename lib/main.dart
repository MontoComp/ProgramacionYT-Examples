import 'package:alertdialog/alertdialog/alert_design2.dart';
import 'package:alertdialog/alertdialog/alertdialog.dart';
import 'package:alertdialog/tabbar/nav_page_provider.dart';
import 'package:alertdialog/tabbar/tabs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider (
          providers: [
            ChangeNotifierProvider(
              create:(context)=>NavPage(),
            )
          ],

          child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: AlertDesingDialog(),
          //home: AlertPage(),
          //home: MyTabBarPage(),
        
      ),
    );
  }
}

