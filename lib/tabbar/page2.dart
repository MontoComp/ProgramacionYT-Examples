import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "Esta es la página 2",
            style: TextStyle(fontSize: 35.0, color: Colors.indigo),
          ),
        ),
      ),
    );
  }
}
