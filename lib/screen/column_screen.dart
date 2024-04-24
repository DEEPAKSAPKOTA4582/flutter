import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Column'),
        ),
        body: Container(
            width: double.infinity,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
                ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
                ElevatedButton(onPressed: () {}, child: const Text('Button 3')),
              ],
            )));
  }
}
