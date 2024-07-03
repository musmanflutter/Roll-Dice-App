import 'package:flutter/material.dart';

import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: GradientContainer(
          colours: [
            Color.fromARGB(255, 14, 3, 101),
            Color.fromARGB(255, 16, 3, 113),
          ],
        ),
      ),
    ),
  );
}
