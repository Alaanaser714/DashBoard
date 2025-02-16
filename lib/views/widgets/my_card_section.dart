import 'package:dashboard/core/utils/app_colors.dart';
import 'package:dashboard/views/widgets/mycard_widget.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_styles.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "my Card",
              style: AppStyles.f20w600(context)
                  .copyWith(color: AppColors.secondColor),
            ),
            SizedBox(
              height: 10,
            ),
            MycardWidget(),
            SizedBox(
              height: 10,
            ),
          
          ],
        ),
      ),
    );
  }
}
