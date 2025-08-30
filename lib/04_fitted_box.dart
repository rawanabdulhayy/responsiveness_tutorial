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
            width: 150,
            height: 100,
            color: Colors.amber,
            child: const FittedBox(
              child: Text("r"),
              // child: Text("this is a looooooooooooong text"),
              // child: Text("long text"),
            ),
          ),
        ),
      ),
    );
  }
}

//------- FittedBox -------
// FittedBox scales and positions its child within itself according to fit policy.
// By default (BoxFit.contain), it scales the child to be as large as possible
// while still maintaining the aspect ratio and ensuring the entire child is visible.
// Useful for text that might overflow its container, images that need to maintain
// aspect ratio, or any content that needs to scale proportionally within a fixed space.
// Note: If the child is too large, FittedBox will shrink it; if too small, it will expand it.
