import 'package:alahlytask/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AlahlytTask());
}

class AlahlytTask extends StatelessWidget {
  const AlahlytTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
