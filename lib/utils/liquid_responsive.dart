import 'dart:math' as math;

import 'package:flutter/material.dart';

class LiquidResponsive {
  static double widthDistancePercentage(
      BuildContext context, double percentage) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return (percentage * deviceWidth) / 100;
  }

  static double heightDistancePercentage(
      BuildContext context, double percentage) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return (percentage * deviceHeight) / 100;
  }

  static double diagonalDistance(BuildContext context, double percentage) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double diagonal = math.sqrt(math.pow(width, 2) + math.pow(height, 2));

    return (percentage * diagonal) / 100;
  }
}
