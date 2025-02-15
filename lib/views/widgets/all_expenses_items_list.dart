import 'package:flutter/material.dart';

import 'all_expenses_item.dart';

class AllExpensesItemsList extends StatelessWidget {
  const AllExpensesItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: AllExpensesItem()),
        Expanded(child: AllExpensesItem()),
        Expanded(child: AllExpensesItem()),
      ],
    );
  }
}
