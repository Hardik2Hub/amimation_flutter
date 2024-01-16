import 'package:animestion/four.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: second(),
    debugShowCheckedModeBanner: false,
  ));
}

class second extends StatefulWidget {
  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List imgs = ['one.jpg', 'two.jpg', 'three.jpg', 'four.jpg', 'five.jpg'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Second"),
        ),
        body: GridView.builder(
          itemCount: imgs.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, four(third(imgs[index])));
              },
              child: Container(
                height: 100,
                width: 100,
                child: Image(image: AssetImage('img/${imgs[index]}')),
              ),
            );
          },
        ),
      ),
    );
  }
}

class third extends StatefulWidget {
  String imgs;

  third(this.imgs);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Third"),
        ),
        body: Hero(
          tag: '${widget.imgs}',
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/${widget.imgs}')))),
        ),
      ),
    );
  }
}
