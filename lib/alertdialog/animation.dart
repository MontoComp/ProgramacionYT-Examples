import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedPage extends StatefulWidget {
  AnimatedPage({Key key}) : super(key: key);

  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  Animation<double> rotation;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    );

    rotation =
        Tween(begin: 0.0, end: 2.0 * math.pi).animate(animationController);

    animationController.addListener(() {
      if (animationController.status == AnimationStatus.completed) {
        //animationController.reverse();
        animationController.repeat();
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
          child: Icon(
            Icons.warning,
            color: Color(0xfffbf100),
            size: 50.0,
          ),
        ),
        builder: (BuildContext context, Widget childrecib) {
          return Transform.rotate(
            angle: rotation.value,
            child: childrecib,
          );
        });
  }
}
