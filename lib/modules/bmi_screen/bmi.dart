import 'dart:math';

import 'package:flutter/material.dart';
import 'package:bmi/modules/bmi_result/bmi_result.dart';

import '../../components/components.dart';

class Bmi extends StatefulWidget {
  @override
  _Bmi createState() => _Bmi();
}

class _Bmi extends State<Bmi> {
  int weight = 50;
  int age = 15;
  bool toggle = true;
  double height = 100;
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
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          right: 15,
          left: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        toggle = true;
                      });
                    },
                    child: Container(
                      // height: 150,
                      decoration: BoxDecoration(
                          color: toggle
                              ? const Color.fromARGB(255, 108, 13, 163)
                              : const Color.fromARGB(255, 61, 56, 121),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.male, color: Colors.white, size: 45),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Male",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        toggle = false;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: toggle
                                ? const Color.fromARGB(255, 61, 56, 121)
                                : const Color.fromARGB(255, 108, 13, 163),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.female, color: Colors.white, size: 45),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                // height: 190,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 61, 56, 121),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      const Text(
                        "HEIGHT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${height.round()}",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text("CM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Slider(
                        value: height,
                        onChanged: (val) {
                          setState(() {
                            height = val;
                          });
                        },
                        min: 80,
                        max: 200,
                        activeColor: const Color.fromARGB(255, 108, 13, 163),
                        inactiveColor: const Color.fromARGB(255, 23, 17, 100),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 61, 56, 121),
                        borderRadius: BorderRadius.circular(10)),
                    // height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("WEIGHT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("$weight",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            defaultFloating(
                                hero: "weight+",
                                function: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icons.add),
                            const SizedBox(
                              width: 5,
                            ),
                            defaultFloating(
                                hero: "weight-",
                                function: () {
                                  if (weight > 30) {
                                    setState(() {
                                      weight--;
                                    });
                                  }
                                },
                                icon: Icons.remove)
                          ],
                        )
                      ],
                    ),
                  )),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                    // height: 170,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 61, 56, 121),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Age",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("$age",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            defaultFloating(
                                hero: "age+",
                                function: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: Icons.add),
                            const SizedBox(
                              width: 5,
                            ),
                            defaultFloating(
                                hero: "age-",
                                function: () {
                                  if (age > 1) {
                                    setState(() {
                                      age--;
                                    });
                                  }
                                },
                                icon: Icons.remove)
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 108, 13, 163)),
                        child: MaterialButton(
                          onPressed: () {
                            double result = weight / pow(height / 100, 2);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BmiResult(
                                          age: age,
                                          weight: weight,
                                          gender: toggle ? "Male" : "Female",
                                          height: height.round(),
                                          result: result.round(),
                                        )));
                          },
                          child: const Text(
                            "Calculate",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
