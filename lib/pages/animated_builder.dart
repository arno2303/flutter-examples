import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'package:flutter_widgets/scaff.dart';

class MyAnimatedBuilder extends StatefulWidget {
  static const routeName = '/animated-builder';

  const MyAnimatedBuilder({super.key});

  @override
  State<MyAnimatedBuilder> createState() => _MyAnimatedBuilderState();
}

class _MyAnimatedBuilderState extends State<MyAnimatedBuilder>
    with TickerProviderStateMixin {
  late final AnimationController controller =
      AnimationController(duration: const Duration(seconds: 5), vsync: this)
        ..repeat();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaff(
      AnimatedBuilder(
        animation: controller,
        builder: (context, child) => Transform.rotate(
          angle: controller.value * 2 * math.pi,
          child: child,
        ),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(180),
            color: Colors.green,
          ),
          child: const Divider(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
