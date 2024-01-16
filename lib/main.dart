import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: first(),
    debugShowCheckedModeBanner: false,
  ));
}

class first extends StatefulWidget {
  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  bool t = false;
  double h = 100;
  double w = 100;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text("First"), backgroundColor: Colors.blue),
          body: Column(
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 5),
                height: h,
                width: w,
                color: Colors.red,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (t) {
                      h = 100;
                      w = 100;
                    } else {
                      h = 200;
                      w = 200;
                    }
                    t = !t;
                    setState(() {});
                  },
                  child: Text("Submit"))
            ],
          )),
    );
  }
}
