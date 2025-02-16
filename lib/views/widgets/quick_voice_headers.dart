import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';

class QuickVoiceheaders extends StatelessWidget {
  const QuickVoiceheaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quick Invoice",
                    style: AppStyles.f20w600(context).copyWith(
                      color: AppColors.secondColor,
                    ),
                  ),
                  Icon(color: AppColors.secondColor, Icons.add),
                ],
              );
  }
}
