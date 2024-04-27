import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DeepakScreen extends StatelessWidget {
  const DeepakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("For Practice"),
          centerTitle: true,
          backgroundColor: Colors.blue),
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  height: 80,
                  child: const Text("Container 1"),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  height: 80,
                  child: const Text("Container 1"),
                ),
              ),
            ],
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              alignment: Alignment.center,
              color: Colors.purple,
              width: double.infinity,
              child: const Text("Container 1"),
            ),
          ),
        ],
      ),

      // this is for first box
    );
  }
}
