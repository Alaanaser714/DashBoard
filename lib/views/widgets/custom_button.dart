import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.isActive,
  });

  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? AppColors.primaryColor : Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 20.0),
        child: Text(
          text,
          style: AppStyles.f16w500(context).copyWith(
            color: isActive ? Colors.white : AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
