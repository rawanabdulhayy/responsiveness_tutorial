//el widget el parent not the very whole screen
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          //takes a builder, which takes a context and constraints, and then we use the constraints var to check for dimensions available
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return Container(
                color: Colors.green,
                child: const Text("Tablet"),
              );
            } else {
              return Container(
                color: Colors.red,
                child: const Text("Mobile"),
              );
            }
          },
        ),
      ),
    );
  }
}
//------- LayoutBuilder -------
// LayoutBuilder provides the parent widget's constraints to its builder function,
// allowing you to build different widgets based on available space. Essential for
// responsive design as it enables conditional rendering based on screen size or
// container dimensions. Unlike MediaQuery which provides screen size, LayoutBuilder
// gives the actual constraints from the immediate parent, making it perfect for
// creating adaptive layouts that respond to their container's size rather than
// just the screen size.