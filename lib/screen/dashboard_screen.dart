import 'package:batch32b/screen/arthmetic_screen.dart';

import 'package:flutter/material.dart';
// ignore: implementation_imports, unnecessary_import
import 'package:flutter/src/widgets/framework.dart';

import 'area_of_circle_screen.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Dashboard', style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        // body parts
        body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ArithmeticScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "ArthmeticScreen",
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                ),

                // gap of two different button
                const SizedBox(
                  height: 10,
                ),
                // for second Button
                

                const SizedBox(
                  height: 10,
                ),

                // for third elevatedButton
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AreaOfCircleScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Area Of Circle",
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                ),
              ],
            )));
  }
}
