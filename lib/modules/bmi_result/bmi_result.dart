import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int age;
  final int weight;
  final String gender;
  final int result;
  final int height;
  BmiResult({
    required this.age,
    required this.weight,
    required this.gender,
    required this.result,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 17, 100),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 23, 17, 100),
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Age : $age",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Weight : $weight",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Gender : $gender",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "height : $height",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Result : $result",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
