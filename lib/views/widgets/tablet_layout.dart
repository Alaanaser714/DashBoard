import 'package:flutter/material.dart';

import 'all_expenses/all_expenses_and_voice_widgets.dart';
import 'drawer/custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

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
        ],
      ),
    );
  }
}
