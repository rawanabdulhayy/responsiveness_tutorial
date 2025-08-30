import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}

//------- AspectRatio -------
// AspectRatio forces its child to have a specific width-to-height ratio.
// The widget will attempt to honor the given aspect ratio while respecting
// any layout constraints from the parent. If the parent provides unbounded
// constraints in one dimension, AspectRatio will use the child's size in
// that dimension to calculate the other. Useful for maintaining consistent
// proportions across different screen sizes or when you want to ensure
// a specific visual ratio (e.g., 16:9 for video players, 1:1 for squares).