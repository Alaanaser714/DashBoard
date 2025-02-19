// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_styles.dart';
import '../../../models/all_expenses_model.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesModel,
  });

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Color(0xffF1F1F1),
            width: 1,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FittedBox(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffFAFAFA).withOpacity(.10),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: Center(
                        child: SvgPicture.asset(
                          colorFilter: ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                          allExpensesModel.image,
                        ),
                      )),
                ),
                Spacer(),
                Transform.rotate(
                    angle: -3.14159,
                    child: Icon(
                      color: Colors.white,
                      Icons.arrow_back_ios_new_outlined,
                    ))
              ],
            ),
            Text(
              allExpensesModel.title,
              style: AppStyles.f16w600(context).copyWith(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              allExpensesModel.date,
              style: AppStyles.f14w400(context).copyWith(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              allExpensesModel.price,
              style: AppStyles.f24w600(context).copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
