import 'package:dashboard/views/widgets/all_expenses/all_expenses_and_voice_widgets.dart';
import 'package:dashboard/views/widgets/drawer/custom_drawer.dart';
import 'package:dashboard/views/widgets/my_card/my_card_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndVoiceWidgets(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 1,
          child: MyCardSection(),
        )
      ],
    ));
  }
}
