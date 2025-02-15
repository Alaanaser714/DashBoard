import 'package:dashboard/models/all_expenses_model.dart';
import 'package:dashboard/views/widgets/inactive_all_expenses_item.dart';
import 'package:dashboard/views/widgets/active_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.isActive,
    required this.allExpensesModel,
  });

  final bool isActive;
  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(
            allExpensesModel: allExpensesModel,
          )
        : InactiveAllExpensesItem(
            allExpensesModel: allExpensesModel,
          );
  }
}
