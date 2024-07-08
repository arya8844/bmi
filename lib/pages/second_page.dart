import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.height, required this.weight});

  final String height;

  final String weight;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double BMI = 0;
  void getBMI() {
    double heightvalue = double.parse(widget.height);
    double weightvalue = double.parse(widget.weight);
    heightvalue = heightvalue / 100;
    setState(() {
      BMI = weightvalue / (heightvalue * heightvalue);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBMI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // Text(widget.height),
          // Text(widget.weight),
          Text('Your BMI value is:'),
          Text(
            BMI.toStringAsFixed(2),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: (BMI > 18 && BMI < 30) ? Colors.green : Colors.red,
            ),
          ),
          (BMI > 18 && BMI < 30)
              ? Text('You are healthy')
              : Text('You are not healthy'),
        ]),
      ),
    );
  }
}
