import 'package:alertdialog/tabbar/page1.dart';
import 'package:alertdialog/tabbar/page2.dart';
import 'package:alertdialog/tabbar/tabs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'nav_page_provider.dart';

class InicioPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var indicepage = Provider.of<NavPage>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text("Mi Inicio",style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.all(7.5),
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Color(0xffff7019),
              child: Text("Ir Page 1",style: TextStyle(color: Colors.white,fontSize: 20.0),),
              onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => Page1(),));


                indicepage.page=1;
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyTabBarPage(),));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(7.5),
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Color(0xffff7019),
              child: Text("Ir Page 2",style: TextStyle(color: Colors.white,fontSize: 20.0),),
              onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(),));

                indicepage.page=2;
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyTabBarPage(),));
              },
            ),
          ),
        ],
      ),
    );
  }
}