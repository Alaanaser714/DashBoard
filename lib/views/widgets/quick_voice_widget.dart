import 'package:dashboard/views/widgets/latest_transaction_widget.dart';
import 'package:flutter/material.dart';

import 'quick_voice_headers.dart';

class QuickVoiceWidget extends StatelessWidget {
  const QuickVoiceWidget({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickVoiceheaders(),
            SizedBox(
              height: 28,
            ),
            LatestTransactionWidget()
          ],
        ),
      ),
    );
  }
}
