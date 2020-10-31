import 'package:bangla_programming_resources/ui/features/home/home_page.dart';
import 'package:bangla_programming_resources/utils/my_colors.dart';
import 'package:flutter/material.dart';

import 'di/dependency_injection.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        primaryColor: primary,
        primaryColorDark: primary_dark,
        accentColor: accent,

        // Define the default font family.
        fontFamily: 'Quicksand',

      ),
      home: HomePage(),
    );
  }
}
