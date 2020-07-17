import 'package:alertdialog/alertdialog/animation.dart';
import 'package:flutter/material.dart';

class AlertDesingDialog extends StatefulWidget {
  @override
  _AlertDesingDialogState createState() => _AlertDesingDialogState();
}

class _AlertDesingDialogState extends State<AlertDesingDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Alert Desing"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("AletDialog Desing"),
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
        context: context,
        builder: (_) => Stack(
                  children: <Widget>[
                    AlertDialog(
                      backgroundColor: Color(0xff000f73).withOpacity(0.9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      title: Center(
                        child: Container(
                          margin: EdgeInsets.only(top:15.0),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Text(
                            'Advertencia',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      content: Text(
                        '¿Está seguro de eliminar este producto?',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      actions: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  width: 80.0,
                                  margin: EdgeInsets.symmetric(horizontal: 1.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xff00C217),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: OutlineButton(
                                    padding: EdgeInsets.all(10.0),
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    highlightedBorderColor: Colors.transparent,
                                    color: Colors.transparent,
                                    child: Text(
                                      'SÍ',
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context, true);
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 80.0,
                                  margin: EdgeInsets.symmetric(horizontal: 1.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xffFF0000),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: OutlineButton(
                                    padding: EdgeInsets.all(10.0),
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    highlightedBorderColor: Colors.transparent,
                                    color: Colors.transparent,
                                    child: Text(
                                      'NO',
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context, false);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned (
                      bottom: MediaQuery.of(context).size.height*0.59,
                      left: 0.0,
                      right: 0.0,
                      child: AnimatedPage(),
                    ),
                  ],
               
            ));
  }
}
