import 'package:bmicalculator/formula.dart';
import 'package:flutter/material.dart';


class ResultPage extends StatefulWidget {
 int weight;
 int height;
 int  age;
 ResultPage({required this.weight,required this.height,required this.age});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Logic logic =Logic();
  double bmiResult =0;
  @override
  void initState() {
   bmiResult =logic.calculateBMI(widget.height, widget.weight);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RESULT"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text("BMI Result",
            style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 30,),
            ),
            Text("${bmiResult.toStringAsFixed(1)}",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
              fontSize: 70,),

            )
          ],
        ),
      ),
      
    );
  }
}