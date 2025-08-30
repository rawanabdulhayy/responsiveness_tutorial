import 'package:flutter/material.dart';

class HomeScreen3 extends StatelessWidget {
  const HomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(color: Colors.green, height: 100, width: 200),
          Expanded(child: Container(color: Colors.blue, height: 100)),
          Expanded(child: Container(color: Colors.red, height: 100)),
        ],
      ),
    );
  }
}
//------- Expanded -------
// Expanded forces a child widget to take up all the remaining free space
// along the main axis (horizontal in a Row, vertical in a Column).
// If multiple Expanded widgets are used, their 'flex' values determine
// how the remaining space is divided (e.g., flex: 2 vs flex: 1 → 2:1 ratio).
// Non-Expanded widgets keep their intrinsic size first, and the leftover
// space is then shared among the Expanded children.          // By default, a Container without a width in a horizontal Row collapses to 0.0, making it invisible.
// Container(color: Colors.green, height: 100),