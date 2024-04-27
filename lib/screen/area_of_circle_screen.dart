import 'package:flutter/material.dart';
import 'package:batch32b/model/area_of_circle_model.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
// Delcare variables
  final mykey = GlobalKey<FormState>();
  double? radious;
  double result = 0;

  AreaOfCircleModel? areaOfCircleModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("AreaOfCircle"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: mykey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  radious = double.parse(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter radious';
                  }
                  return null;
                },
                // thsi is for ...........

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter radious',
                ),
              ),

              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //check for validaton
                    if (mykey.currentState!.validate()) {
                      setState(() {
                        areaOfCircleModel =
                            AreaOfCircleModel(radious: radious!);
                        result = areaOfCircleModel!.calculateAreaOfCircle();
                      });
                    }
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Area Of Circle  is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
