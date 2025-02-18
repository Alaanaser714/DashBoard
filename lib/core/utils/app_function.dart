import 'package:dashboard/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class AppFunction {
  static double getResponsiveFontSize(BuildContext context,
      {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;

    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width < SizeConfig.tablet) { //600
      return width / 550; //400
    } else if (width < SizeConfig.desktop) {  //900
      return width / 1000; //700
    } else {
      return width / 1100; //1000
    }
  }
}
