import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //---------Media Query----------
    var screenWidth = MediaQuery.of(context).size.width;
    var screenLength = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          //having the container width or height relative to the screen width
          width: screenWidth * 0.5,
          height: 100,
          color: Colors.blue,
          child: Text("Half Screen Text"),
        ),
      ),
    );
  }
}
//------- MediaQuery -------
// MediaQuery provides information about the current device’s screen and
// environment (e.g., size, orientation, pixel density, padding).
// It is commonly used for responsive design, allowing widgets to size
// themselves relative to the screen dimensions.
// Example: MediaQuery.of(context).size.width * 0.5 → sets a widget’s
// width to 50% of the screen width.
// Use MediaQuery when you need precise proportional sizing rather than
// relying only on Expanded/Flexible space distribution.