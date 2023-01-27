import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BmiDesktop extends StatelessWidget {
  const BmiDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "hello",
        style: TextStyle(
            color: Colors.green, fontSize: 23, fontWeight: FontWeight.bold),
      ),
    );
  }
}
