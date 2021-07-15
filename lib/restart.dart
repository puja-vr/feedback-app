import 'dart:io';

import 'package:flutter/material.dart';
import 'package:feedback_app/variables.dart';
import 'package:get/get.dart';
import 'dart:ui';

class Restart extends StatefulWidget {
  @override
  _RestartState createState() => _RestartState();
}

class _RestartState extends State<Restart> {
  @override
  Widget build(BuildContext context) {
    Variables _v = Get.put(Variables());
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.green[100]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
              child: Image.asset(
                'assets/thumbsup.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Text(
                  "Thank you for your feedback!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montez',
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 75),
            Container(
              color: Colors.green[200],
              height: 150,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    "Hope we serve you better next time!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _v.setColor(),
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PTSans',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Get.back();
                _v.currentSliderValue = 1;
                _v.pts = 0;
                _v.index = 0;
              },
              child: Container(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Restart',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'PTSans',
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
