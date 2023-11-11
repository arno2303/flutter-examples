import 'package:flutter/material.dart';
import 'package:flutter_widgets/scaff.dart';

class MyAnimatedAlign extends StatefulWidget {
  static const routeName = '/animated-align';
  const MyAnimatedAlign({super.key});

  @override
  State<MyAnimatedAlign> createState() => _MyAnimatedAlignState();
}

class _MyAnimatedAlignState extends State<MyAnimatedAlign> {
  static const positions = [
    Alignment.center,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.centerRight,
    Alignment.bottomRight,
    Alignment.bottomCenter,
    Alignment.bottomLeft,
    Alignment.centerLeft,
    Alignment.topLeft,
    Alignment(0.2, 0.4),
  ];

  int currentPosition = 0;

  void changePosition() {
    setState(() {
      currentPosition++;
      if (currentPosition >= positions.length) {
        currentPosition = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaff(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: AnimatedAlign(
              alignment: positions[currentPosition],
              duration: const Duration(seconds: 2),
              curve: Curves.bounceInOut,
              child: Container(
                width: 20,
                height: 20,
                color: Colors.amber,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: changePosition, child: const Text('Press Me')),
        ],
      ),
    );
  }
}
