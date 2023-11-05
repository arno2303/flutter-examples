import 'package:flutter/material.dart';

import 'package:flutter_widgets/scaff.dart';

class MyAlertDialog extends StatelessWidget {
  static const routeName = '/alert_dialog';

  const MyAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaff(
      TextButton(
        child: Text('Press me!'),
        onPressed: () async {
          return showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              shadowColor: Colors.green,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 10, color: Colors.green),
                borderRadius: BorderRadius.circular(25),
              ),
              title: Text('This is title'),
              content: Text('This is content, this content can be overflow'),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm)),
                IconButton(onPressed: () {}, icon: Icon(Icons.cabin)),
              ],
            ),
          );
        },
      ),
    );
  }
}
