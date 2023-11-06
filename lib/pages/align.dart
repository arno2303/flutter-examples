import 'package:flutter/material.dart';
import 'package:flutter_widgets/scaff.dart';

class MyAlign extends StatefulWidget {
  static const routeName = '/align';

  const MyAlign({super.key});

  @override
  State<MyAlign> createState() => _MyAlignState();
}

class _MyAlignState extends State<MyAlign> {
  static List<Alignment> alignCoords = const [
    Alignment.center,
    Alignment.centerLeft,
    Alignment.topLeft,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.centerRight,
    Alignment.bottomRight,
    Alignment.bottomCenter,
    Alignment.bottomLeft,
    Alignment(0.2, 0.6),
  ];

  int currentAligment = 0;

  void changeMyAligment() {
    setState(() {
      currentAligment++;
      if (currentAligment >= alignCoords.length) {
        currentAligment = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaff(Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(alignCoords[currentAligment].toString()),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 120,
          height: 120,
          decoration: const BoxDecoration(color: Colors.blueGrey),
          child: Align(
            alignment: alignCoords[currentAligment],
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.amberAccent,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: changeMyAligment,
          child: const Text('Change align of box'),
        ),
      ],
    ));
  }
}
