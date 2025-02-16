import 'package:dashboard/models/transaction_model.dart';
import 'package:dashboard/views/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  final List<TransactionModel> transactionList = const [
    TransactionModel(
        title: "Cash Withdrawal",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        price: "\$20,129",
        color: Colors.red),
    TransactionModel(
        title: "Landing Page project",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        price: "\$2,000",
        color: Colors.green),
    TransactionModel(
        title: "Juni Mobile App project",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        price: "\$20,120",
        color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Transaction History",
                style: AppStyles.f14w400(context).copyWith(
                  color: AppColors.secondColor,
                )),
            Text("See all",
                style: AppStyles.f12w400(context).copyWith(
                  color: AppColors.primaryColor,
                )),
          ],
        ),
        const SizedBox(height: 10),
        ...List.generate(3, (index) {
          return TransactionCard(transactionModel: transactionList[index]);
        }),
      ],
    );
  }
}
