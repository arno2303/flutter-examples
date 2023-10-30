import 'package:flutter/material.dart';

import './pages/absorb-pointer.dart';

void main() {
  runApp(const Examples());
}

class Examples extends StatelessWidget {
  const Examples({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyAbsorbPointer(),
        ),
      ),
    );
  }
}
