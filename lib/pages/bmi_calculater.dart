import 'package:bmi_1/pages/second_page.dart';
import 'package:flutter/material.dart';

class BmiCalculater extends StatefulWidget {
  const BmiCalculater({super.key});

  @override
  State<BmiCalculater> createState() => _BmiCalculaterState();
}

class _BmiCalculaterState extends State<BmiCalculater> {
  //setting a text editing controller

  final TextEditingController heightcontroller = TextEditingController();
  final TextEditingController weightcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'BMI Calculater',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Text('Height'),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: TextField(
                            controller: heightcontroller,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        )),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Text('Weight'),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextField(
                            controller: weightcontroller,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()),
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondPage(
                                    height: heightcontroller.text,
                                    weight: weightcontroller.text)));
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(
                          child: Text(
                            'Calculate BMI',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                    //calculate btn
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
