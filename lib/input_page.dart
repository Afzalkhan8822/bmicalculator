import 'package:bmicalculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'enum_file.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedCard;

  int weight = 50;
  int age = 30;
  int hight = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATAR"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = Gender.male;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            color: Colors.white,
                            size: 100,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "MALE",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedCard == Gender.male
                              ? Colors.teal
                              : Colors.lightBlueAccent),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = Gender.female;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            color: Colors.white,
                            size: 100,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "FEMALE",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedCard == Gender.female
                              ? Colors.teal
                              : Colors.lightBlueAccent),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // second row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HIGHT",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              hight.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 75,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Slider(
                          value: hight.toDouble(),
                          min: 110.0,
                          max: 220.0,
                          onChanged: (double chageHeight) {
                            setState(() {
                              hight = chageHeight.round();
                            });
                          },
                          inactiveColor: Colors.white,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlueAccent),
                  ),
                ),
              ],
            ),
          ),
          // third row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(
                            fontSize: 65,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlueAccent),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(
                            fontSize: 65,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultPage(
                  height: hight, 
                  age: age, 
                  weight: weight,
                  )),
              );
            },
            child: Container(
              color: Colors.redAccent,
              width: double.infinity,
              height: 60,
              child: Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
