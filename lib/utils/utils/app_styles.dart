import 'package:dashboard/utils/app_funcation/app_function.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle f24w600(context) {
    return TextStyle(
      fontSize: AppFunction.getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
    );
  }
}
