import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedPage extends StatefulWidget {
  AnimatedPage({Key key}) : super(key: key);

  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;


  Animation<double> rotationderecha;
  Animation<double> rotationizquierda;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    );


    rotationderecha = Tween(begin: 0.0, end:pi / 4).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.0,
          0.5,
        )));
    
    rotationizquierda =Tween(begin: 0.0,end: -pi/2).animate(CurvedAnimation(
            parent: animationController,
            curve: Interval(
              0.5,
              1.0,
            )));

    
    animationController.addListener(() {
      if (animationController.status == AnimationStatus.completed) {
        animationController.reverse();
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animationController.forward();

    return AnimatedBuilder(
        animation: animationController,
        child: Center(
          child: Image.asset(
            "assets/bell.png",
            width: 100.0,
            height: 100.0,
          ),
        ),
        builder: (BuildContext context, Widget childrecib) {
          return Transform.rotate(
              angle: rotationderecha.value,
              child: Transform.rotate(
                angle: rotationizquierda.value,
                child: childrecib,
              ));
        });
  }
}
