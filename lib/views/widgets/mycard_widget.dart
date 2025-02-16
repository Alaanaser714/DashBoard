import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_styles.dart';

class MycardWidget extends StatelessWidget {
  const MycardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text('Name card',
                  style: AppStyles.f16w400(context).copyWith(
                    color: Colors.white,
                  )),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.f20w500(context),
              ),
              trailing: SvgPicture.asset(Assets.wallet),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 48 - 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.f18w600(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.f12w400(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
