import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Variables extends GetxController {
  double currentSliderValue = 1, pts = 0;
  List ques = [
    "How do you like our Service?",
    "How do you appreciate the Sanitiation?",
    "How was the Sound Quality?",
    "How was the Lighting?",
    "How likely are you to reccommend us to your friends?",
    "How likely are you to comeback here?",
  ];
  int index = 0;

  MaterialColor setColor() {
    if (pts <= 10)
      return Colors.red;
    else if (pts <= 20)
      return Colors.yellow;
    else
      return Colors.green;
  }
}
