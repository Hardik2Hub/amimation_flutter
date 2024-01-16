import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class four extends PageRoute {

  Widget third;

  four(this.third);

  @override
  // TODO: implement barrierColor
  Color? get barrierColor => Colors.yellow;

  @override
  // TODO: implement barrierLabel
  String? get barrierLabel => "test";

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(
      child: third,
      opacity: animation,
    );
  }

  @override
  // TODO: implement maintainState
  bool get maintainState => true;

  @override
  // TODO: implement transitionDuration
  Duration get transitionDuration => Duration(seconds: 5);
}
