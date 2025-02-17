import 'package:dashboard/views/widgets/all_expenses/all_expenses_and_voice_widgets.dart';
import 'package:dashboard/views/widgets/my_card/my_card_section.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndVoiceWidgets(),
          SizedBox(
            height: 24,
          ),
          MyCardSection(),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
