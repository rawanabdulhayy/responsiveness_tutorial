import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Icon(Icons.star, size: 50),
          const Spacer(),
          const Icon(Icons.star, size: 50),
        ],
      ),
    );
  }
}
//------- Spacer -------
// Spacer is a flexible empty space that expands along the main axis of a Flex container
// (Row or Column). It uses the flex property to determine how much space to take relative
// to other Spacer widgets and Expanded widgets. By default (flex: 1), it takes an equal
// share of available space. Useful for distributing space between widgets or pushing
// widgets to specific positions (like start, middle, end) within a flex container.