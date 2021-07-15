import 'package:feedback_app/restart.dart';
import 'package:flutter/material.dart';
import 'package:feedback_app/variables.dart';
import 'package:get/get.dart';
import 'dart:ui';

class Rating extends StatefulWidget {
  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    Variables _v = Get.put(Variables());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Feedback App',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        body: _v.index < _v.ques.length
            ? Container(
                decoration: BoxDecoration(color: Colors.green[100]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.green[200],
                      ),
                      height: 160,
                      width: 330,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Center(
                          child: Text(
                            _v.ques[_v.index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.green[800],
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'PTSans',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.green[800],
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'PTSans',
                            ),
                          ),
                        ),
                        Expanded(
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.green,
                              inactiveTrackColor: Colors.green[200],
                              trackShape: RoundedRectSliderTrackShape(),
                              trackHeight: 5.0,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 12.0),
                              thumbColor: Colors.green,
                              tickMarkShape: RoundSliderTickMarkShape(),
                              activeTickMarkColor: Colors.black,
                              inactiveTickMarkColor: Colors.black,
                              valueIndicatorShape:
                                  PaddleSliderValueIndicatorShape(),
                              valueIndicatorColor: Colors.green,
                              valueIndicatorTextStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            child: Slider(
                              value: _v.currentSliderValue,
                              min: 1,
                              max: 5,
                              divisions: 4,
                              label: _v.currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _v.currentSliderValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Text(
                            "5",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.green[800],
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'PTSans',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 50,
                      width: 330,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green.shade800,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          _v.currentSliderValue.toInt().toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.green[800],
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'PTSans'),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 10,
                          primary: Colors.green,
                          padding: EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
                          textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'PTSans')),
                      onPressed: () {
                        _v.pts += _v.currentSliderValue;
                        print(_v.pts);
                        setState(() {
                          _v.index++;
                          _v.currentSliderValue = 1;
                        });
                      },
                      child: const Text('Next'),
                    ),
                  ],
                ),
              )
            : Restart());
  }
}
