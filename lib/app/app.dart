import 'package:batch32b/screen/container_screen.dart';
import 'package:flutter/material.dart';
// import 'package:batch32b/screen/dashboard_screen.dart';
import 'package:batch32b/screen/Container_screen.dart';

import '../screen/flixible_expanded_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlexibleExpandedScreen(),
    );
  }
}
