import 'package:flutter/material.dart';

class MyAbsorbPointer extends StatelessWidget {
  const MyAbsorbPointer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 200,
          height: 100,
          child: ElevatedButton(
            onPressed: () => print('I was pressed'),
            child: null,
          ),
        ),
        SizedBox(
          width: 100,
          height: 200,
          child: AbsorbPointer(
            child: ElevatedButton(
              onPressed: () => print('I cannot be pressed'),
              child: null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
