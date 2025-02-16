import 'package:flutter/material.dart';

import 'all_expenses_header_item.dart';
import 'all_expenses_items_list.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 25,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AllExpensesHeaderItem(),
          SizedBox(
            height: 28,
          ),
          AllExpensesItemsList(),
        ]),
      ),
    );
  }
}


