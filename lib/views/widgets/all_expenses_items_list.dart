import 'package:dashboard/core/utils/app_assets.dart';
import 'package:dashboard/models/all_expenses_model.dart';
import 'package:dashboard/views/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemsList extends StatefulWidget {
  const AllExpensesItemsList({super.key});

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  final List<AllExpensesModel> allexpenesList = [
    AllExpensesModel(
      title: "Balance",
      date: "April 2022",
      image: Assets.moneys,
      price: "\$20,129",
    ),
    AllExpensesModel(
      title: "Income",
      date: "April 2022",
      image: Assets.cardSend,
      price: "\$20,129",
    ),
    AllExpensesModel(
      title: "Expenses",
      date: "April 2022",
      image: Assets.cardReceive,
      price: "\$20,129",
    ),
  ];

  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: allexpenesList
          .map((e) => Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = allexpenesList.indexOf(e);
                    });
                  },
                  child: AllExpensesItem(
                    allExpensesModel: e,
                    isActive: isSelected == allexpenesList.indexOf(e),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
