import 'package:dashboard/views/widgets/income/income_section_body.dart';
import 'package:flutter/material.dart';

import 'income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            IncomeHeader(),
            SizedBox(
              height: 20,
            ),
            IncomSectionBody(),
          ],
        ),
      ),
    );
  }
}
