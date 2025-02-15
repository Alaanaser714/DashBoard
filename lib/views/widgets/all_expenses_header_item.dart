import 'package:dashboard/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_styles.dart';

class AllExpensesHeaderItem extends StatelessWidget {
  const AllExpensesHeaderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.f20w600(context).copyWith(
            color: AppColors.secondColor,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Color(0xffF1F1F1),
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 14,
            ),
            child: Row(
              children: [
                Text(
                  "Monthly",
                  style: AppStyles.f16w500(context).copyWith(
                    color: AppColors.secondColor,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Transform.rotate(
                    angle: -1.5707,
                    child: Icon(
                        color: AppColors.secondColor,
                        Icons.arrow_back_ios_new_outlined))
              ],
            ),
          ),
        )
      ],
    );
  }
}
