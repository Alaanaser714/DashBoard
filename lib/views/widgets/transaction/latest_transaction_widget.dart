import 'package:dashboard/views/widgets/transaction/latest_transaction_list_view.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_styles.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transactions",
          style:
              AppStyles.f14w400(context).copyWith(color: AppColors.lightGrey),
        ),
        SizedBox(
          height: 20,
        ),
        LatestTransactionlistView(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
