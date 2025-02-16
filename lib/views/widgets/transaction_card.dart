import 'package:dashboard/models/transaction_model.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
          decoration: BoxDecoration(
              color: Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactionModel.title,
                        style: AppStyles.f12w400(context).copyWith(
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        transactionModel.subtitle,
                        style: AppStyles.f12w400(context).copyWith(
                          color: AppColors.lightGrey,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    transactionModel.price,
                    style: AppStyles.f12w400(context).copyWith(
                      color: transactionModel.color,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
