import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: six(),
    debugShowCheckedModeBanner: false,
  ));
}

class six extends StatefulWidget {
  @override
  State<six> createState() => _sixState();
}

class _sixState extends State<six> {
  List imgs = ['one.jpg', 'two.jpg', 'three.jpg', 'four.jpg', 'five.jpg'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Animetion"),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: imgs.length,
          itemBuilder: (context, index) {
            return OpenContainer(
              middleColor: Colors.red,
              transitionDuration: Duration(seconds: 5),
              transitionType: ContainerTransitionType.fadeThrough,
              closedBuilder: (context, action) {
                return Container(
                  child: Image.asset('img/${imgs[index]}'),
                );
              },
              openBuilder: (context, action) {
                return second(imgs[index]);
              },
            );
          },
        ),
      ),
    );
  }
}

class second extends StatefulWidget {
  String img;

  second(this.img);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Image.asset('img/${widget.img}')),
    );
  }
}
