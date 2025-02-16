import 'package:dashboard/views/widgets/quick_voice_widget.dart';
import 'package:flutter/material.dart';

import 'all_expenses_widget.dart';

class AllExpensesAndVoiceWidgets extends StatelessWidget {
  const AllExpensesAndVoiceWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AllExpensesWidget(),
            SizedBox(
              height: 20,
            ),
            QuickVoiceWidget(),
          ],
        ),
      ),
    );
  }
}
