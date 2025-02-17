// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import 'income_chart.dart';
import 'income_details.dart';

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // return width < 1750
    //     ? const Expanded(
    //         child: Padding(
    //         padding: EdgeInsets.all(16),
    //         child: DetailedIncomeChart(),
    //       ))
    //     : const

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        SizedBox(
          width: 10,
        ),
        Expanded(flex: 2, child: IncomeDetails()),
      ],
    );
  }
}
