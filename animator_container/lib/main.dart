import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(AnimatedContainerApp ());


class AnimatedContainerApp extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {

  // Define properties with deflaut values
  double widthX = 50.0;
  double heightX = 50.0;
  Color colorX = Colors.green;
  BorderRadiusGeometry borderRadiusX = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _AppBar1(),
        body: _Center1(widthX, heightX, colorX, borderRadiusX),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          // when user taps the button
          onPressed: () {
            // Use setState to rebuild the widget with new values
            setState(() {
             final random = Random();
             // Generate a random width, height, color and border
              widthX = random.nextInt(300).toDouble();
              heightX = random.nextInt(300).toDouble();
              colorX = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1);
              borderRadiusX = BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
        ),
      ),
      
    );
  }
}


Widget _AppBar1() {
  return AppBar(
    title: Text('AnimatedContainer Demo'),
    centerTitle: true,
    backgroundColor: Colors.blueAccent,
  );
}

Widget _Center1(w, h, c, br) {
  return Center(
    child: AnimatedContainer(
      width: w, height: h,
      decoration: BoxDecoration(
        color: c,
        borderRadius: br,
      ),
      // Define how long the animation should take
      duration: Duration(seconds: 1),
      // Provide an optional curve to make the animation feel smoother
      curve: Curves.fastOutSlowIn,
    ),


  );

}