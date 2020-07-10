import 'package:alertdialog/alertdialog/animation.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  @override
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: Text("My Alert"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("AletDialog"),
            onPressed: () {
              _myalertdialog();
            },
          ),
        ),
      ),
    );
  }

  _myalertdialog() {

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Color(0xff000f73).withOpacity(0.9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              AnimatedPage(),

              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Text(
                  'Advertencia',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(5.0),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 2.0,
              ),
            ],
          ),
        ),
        content: Text(
          '¿Está seguro de eliminar este producto?',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        actions: <Widget>[
          Container(
            width: 80.0,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: Color(0xff00C217),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: OutlineButton(
              padding: EdgeInsets.all(10.0),
              borderSide: BorderSide(color: Colors.transparent),          
              color: Colors.transparent,
              child: Text(
                'SÍ',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            width: 80.0,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: Color(0xffFF0000),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: OutlineButton(
              padding: EdgeInsets.all(10.0),
              borderSide: BorderSide(color: Colors.transparent),

              color: Colors.transparent,
              child: Text(
                'NO',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }

}
