import 'package:flutter/material.dart';

import 'package:flutter_widgets/pages/absorb_pointer.dart';
import 'package:flutter_widgets/pages/align.dart';
import 'package:flutter_widgets/pages/animated_align.dart';
import 'package:flutter_widgets/pages/animated_builder.dart';
import 'package:flutter_widgets/pages/animated_container.dart';
import 'package:flutter_widgets/pages/home.dart';
import 'package:flutter_widgets/pages/alert_dialog.dart';

void main() {
  runApp(const Examples());
}

class Examples extends StatelessWidget {
  const Examples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
      routes: {
        MyAbsorbPointer.routeName: (context) => const MyAbsorbPointer(),
        MyAlertDialog.routeName: (context) => const MyAlertDialog(),
        MyAlign.routeName: (context) => const MyAlign(),
        MyAnimatedAlign.routeName: (context) => const MyAnimatedAlign(),
        MyAnimatedBuilder.routeName: (context) => const MyAnimatedBuilder(),
        MyAnimatedContainer.routeName: (context) => const MyAnimatedContainer()
      },
    );
  }
}
