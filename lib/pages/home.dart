import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/absorb_pointer.dart';
import 'package:flutter_widgets/pages/alert_dialog.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  final List<Map<String, dynamic>> listWidgets = [
    {"route": MyAbsorbPointer.routeName, "name": (MyAbsorbPointer).toString()},
    {"route": MyAlertDialog.routeName, "name": (MyAlertDialog).toString()},
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mdQuery = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Column(
          children: listWidgets
              .map(
                (e) => SizedBox(
                  width: mdQuery.width,
                  child: ElevatedButton(
                    child: Text(e["name"]),
                    onPressed: () =>
                        Navigator.of(context).pushNamed(e["route"]),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
