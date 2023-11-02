import 'package:flutter/material.dart';

class Scaff extends StatelessWidget {
  final Widget childWidget;

  const Scaff(this.childWidget, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: childWidget),
    );
  }
}
