import 'package:feedback_app/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(Feedback());

class Feedback extends StatefulWidget {
  @override
  _FeedbackState createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'PTSans',
        ),
        home: Welcome());
  }
}
