import 'package:dashboard/core/utils/app_colors.dart';
import 'package:dashboard/core/utils/app_styles.dart';
import 'package:dashboard/views/widgets/quick_voice_headers.dart';
import 'package:dashboard/views/widgets/quick_voice_widget.dart';
import 'package:flutter/material.dart';

import 'all_expenses_widget.dart';

class AllExpensesAndVoiceWidgets extends StatelessWidget {
  const AllExpensesAndVoiceWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AllExpensesWidget(),
          SizedBox(
            height: 20,
          ),
          QuickVoiceWidget(),
        ],
      ),
    );
  }
}
