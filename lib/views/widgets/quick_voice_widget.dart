import 'package:dashboard/core/utils/app_assets.dart';
import 'package:dashboard/views/widgets/user_info_item.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';
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
            
          ],
        ),
      ),
    );
  }
}
