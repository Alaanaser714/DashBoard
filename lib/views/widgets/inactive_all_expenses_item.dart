import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';

class InactiveAllExpensesItem extends StatelessWidget {
  const InactiveAllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.primaryColor,
              width: 1,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xffFAFAFA),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child:
                          Center(child: SvgPicture.asset(Assets.cardReceive))),
                  Transform.rotate(
                      angle: -3.14159,
                      child: Icon(
                          color: AppColors.secondColor,
                          Icons.arrow_back_ios_new_outlined))
                ],
              ),
              Text(
                "Income",
                style: AppStyles.f16w600(context).copyWith(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "April 2022",
                style: AppStyles.f14w400(context).copyWith(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "\$20.129",
                style: AppStyles.f24w600(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
