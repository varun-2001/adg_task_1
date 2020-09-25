import 'package:adg_task_1/itemCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Product-Sans'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(29, 30, 51, 1),
        body: SafeArea(child: MyApp()),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _weight = 50;
  int _age = 18;
  int _height = 150;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'BMI CALCULATOR',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemCard(
                iconic: FaIcon(
                  FontAwesomeIcons.mars,
                  color: Colors.white,
                ),
                text: 'MALE',
              ),
              ItemCard(
                iconic: FaIcon(
                  FontAwesomeIcons.venus,
                  color: Colors.white,
                ),
                text: 'FEMALE',
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.05),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '$_height',
                        style: TextStyle(
                          fontSize: 70,
                          color: Colors.white,
                        ),
                      ),
                      SliderTheme(
                        child: Slider(
                          max: 250.0,
                          min: 120,
                          label: _height.toString(),
                          onChanged: (double newvalue) {
                            setState(() {
                              _height = newvalue.round();
                            });
                          },
                          value: _height.toDouble(),
                        ),
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '$_weight',
                        style: TextStyle(
                          fontSize: 70,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Material(
                            child: IconButton(
                              iconSize: 40,
                              icon: FaIcon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                            ),
                            color: Color.fromRGBO(76, 79, 94, 1),
                            shape: CircleBorder(),
                          ),
                          Material(
                            child: IconButton(
                              iconSize: 40,
                              icon: FaIcon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                            ),
                            color: Color.fromRGBO(76, 79, 94, 1),
                            shape: CircleBorder(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'AGE',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '$_age',
                        style: TextStyle(
                          fontSize: 70,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Material(
                            child: IconButton(
                              iconSize: 40,
                              icon: FaIcon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  _age--;
                                });
                              },
                              splashRadius: 40,
                            ),
                            color: Color.fromRGBO(76, 79, 94, 1),
                            shape: CircleBorder(),
                          ),
                          Material(
                            child: IconButton(
                              iconSize: 40,
                              icon: FaIcon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  _age++;
                                });
                              },
                            ),
                            color: Color.fromRGBO(76, 79, 94, 1),
                            shape: CircleBorder(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                        child: FlatButton(
                      child: Text(
                        'CALCULATE',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: null,
                    )),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(235, 21, 85, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
