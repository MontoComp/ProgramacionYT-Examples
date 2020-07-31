import 'dart:async';

import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  TextPage({Key key}) : super(key: key);

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {

  double text = 30.0;
  double iconsize = 50.0;

  double _value = 5.0;

  final StreamController<double> _controller = StreamController<double>.broadcast();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff111111),
        title: Text("My Widget",style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Slider(
                value: _value,
                min: 0.0,
                max: 10.0,
                onChanged: (double value) {
                  setState(() {
                    _value = value.roundToDouble();

                    switch (_value.round()) {
                      case 1:
                        text = 22.0;
                        iconsize = 30.0;
                        break;
                      case 2:
                        text = 24.0;
                        iconsize = 35.0;
                        break;
                      case 3:
                        text = 26.0;
                        iconsize = 40.0;
                        break;
                      case 4:
                        text = 28.0;
                        iconsize = 45.0;
                        break;
                      case 5:
                        text = 30.0;
                        iconsize = 50.0;
                        break;
                      case 6:
                        text = 32.0;
                        iconsize = 55.0;
                        break;
                      case 7:
                        text = 34.0;
                        iconsize = 60.0;
                        break;
                      case 8:
                        text = 36.0;
                        iconsize = 65.0;
                        break;
                      case 9:
                        text = 38.0;
                        iconsize = 70.0;
                        break;
                      case 10:
                        text = 40.0;
                        iconsize = 75.0;
                        break;
                      default:
                    }
                    print(_value.roundToDouble());
                  });
                },
              ),
              Icon(
                Icons.color_lens,
                color: Colors.black87,
                size: iconsize,
              ),
              Text(
                "Flutter 2020 - Canal de Youtube: Programming YT",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: text),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.text_format),
        onPressed: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) => AlertDialog(
              backgroundColor: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.5),
              ),
              title: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Text(
                        'Formato de la letra',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.text_rotate_vertical,
                          size: 40.0,
                        ),
                        Icon(
                          Icons.text_rotate_up,
                          size: 40.0,
                        ),
                      ],
                    ),

                    StreamBuilder(
                      initialData: _value,
                      stream: _controller.stream,
                      builder: (context, snapshot) {
                        return Slider(
                          value: snapshot.data,
                          min: 0.0,
                          max: 10.0,
                          onChanged: (double value) {
                            _controller.sink.add(value);//
                            setState(() {
                              _value = value.roundToDouble();

                              switch (_value.round()) {
                                case 1:
                                  text = 22.0;
                                  iconsize = 30.0;
                                  break;
                                case 2:
                                  text = 24.0;
                                  iconsize = 35.0;
                                  break;
                                case 3:
                                  text = 26.0;
                                  iconsize = 40.0;
                                  break;
                                case 4:
                                  text = 28.0;
                                  iconsize = 45.0;
                                  break;
                                case 5:
                                  text = 30.0;
                                  iconsize = 50.0;
                                  break;
                                case 6:
                                  text = 32.0;
                                  iconsize = 55.0;
                                  break;
                                case 7:
                                  text = 34.0;
                                  iconsize = 60.0;
                                  break;
                                case 8:
                                  text = 36.0;
                                  iconsize = 65.0;
                                  break;
                                case 9:
                                  text = 38.0;
                                  iconsize = 70.0;
                                  break;
                                case 10:
                                  text = 40.0;
                                  iconsize = 75.0;
                                  break;
                                default:
                              }
                              print(_value.round());
                            });
                          },
                        );
                      },
                    ),

                  ],
                ),
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
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: OutlineButton(
                            padding: EdgeInsets.all(10.0),
                            borderSide: BorderSide(color: Colors.transparent),
                            highlightedBorderColor: Colors.transparent,
                            color: Colors.transparent,
                            child: Text(
                              'Cerrar',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
