import 'package:dashboard/core/utils/app_function.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle f16w400(context) {
    return TextStyle(
      fontSize: AppFunction.getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle f16w600(context) {
    return TextStyle(
      fontSize: AppFunction.getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle f18w600(context) {
    return TextStyle(
      fontSize: AppFunction.getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle f16w500(context) {
    return TextStyle(
      fontSize: AppFunction.getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle f12w400(context) {
    return TextStyle(
      fontSize: AppFunction.getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle f20w600(context) {
    return TextStyle(
      fontSize: AppFunction.getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle f24w600(context) {
    return TextStyle(
      fontSize: AppFunction.getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle f14w400(context) {
    return TextStyle(
      fontSize: AppFunction.getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle f20w500(context) {
    return TextStyle(
      fontSize: AppFunction.getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
    );
  }
}
