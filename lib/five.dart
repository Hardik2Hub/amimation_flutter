import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: five(),
    debugShowCheckedModeBanner: false,
  ));
}

class five extends StatefulWidget {
  @override
  State<five> createState() => _fiveState();
}

class _fiveState extends State<five> {
  bool t = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(""),
        ),
        body: Column(children: [
          Expanded(
              child: PageTransitionSwitcher(
            child: t ? one() : two(),
            duration: Duration(seconds: 5),
            transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
              return SharedAxisTransition(
                  child: child,
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.horizontal);
            },
          )),
          ElevatedButton(
              onPressed: () {
                t = !t;
                setState(() {});
              },
              child: Text("Click"))
        ]),
      ),
    );
  }
}

class one extends StatefulWidget {
  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Image.asset('img/one.jpg')),
    );
  }
}

class two extends StatefulWidget {
  @override
  State<two> createState() => _twoState();
}

class _twoState extends State<two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Image.asset('img/two.jpg')),
    );
  }
}
