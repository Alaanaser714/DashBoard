import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.text,
  });

  final String hintText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
            style: AppStyles.f16w500(context).copyWith(
              color: AppColors.secondColor,
            )),
        TextField(
          decoration: InputDecoration(
            
            hintText: hintText,
            filled: true,
            fillColor: Color(0xffFAFAFA),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffFAFAFA),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffFAFAFA),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffFAFAFA),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
