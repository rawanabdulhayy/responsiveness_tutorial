import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              //-------Flexible-------
              //Ratio of young flexible flexers always remains 2:1
              Flexible(
                flex: 2,
                child: Container(color: Colors.green, height: 100),
              ),
              Flexible(
                flex: 1,
                child: Container(color: Colors.red, height: 100),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(color: Colors.green, height: 100),
              ),
              Flexible(
                flex: 2,
                child: Container(color: Colors.red, height: 100),
              ),
              Flexible(
                flex: 3,
                child: Container(color: Colors.blue, height: 100),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//------- Flexible -------
// Flexible also allocates space in the main axis using 'flex', but unlike
// Expanded, it allows its child to size itself smaller than the allocated
// space if it wishes.
// Useful when you want a widget to take available space but still allow
// it to wrap or shrink to fit its content, instead of stretching to fill
// all the flex area.