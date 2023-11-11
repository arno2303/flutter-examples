import 'package:flutter/material.dart';
import 'package:flutter_widgets/scaff.dart';

class MyAnimatedContainer extends StatefulWidget {
  static const routeName = '/animated-container';
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaff(
      GestureDetector(
        onTap: () {
          setState(() {
            isClicked = !isClicked;
          });
        },
        child: AnimatedContainer(
          width: isClicked ? 250 : 50,
          height: isClicked ? 50 : 250,
          color: Colors.yellow,
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          alignment:
              isClicked ? Alignment.center : AlignmentDirectional.topCenter,
          child: const Text('Click on me'),
        ),
      ),
    );
  }
}
