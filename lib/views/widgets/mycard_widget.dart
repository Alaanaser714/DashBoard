import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_styles.dart';

class MycardWidget extends StatelessWidget {
  const MycardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215, // الحفاظ على نفس الأبعاد الأصلية
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 10,
              ),

              /// العنوان والمعلومات
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name card',
                        style: AppStyles.f12w400(context)
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Syah Bandi',
                        style: AppStyles.f12w400(context),
                      ),
                    ],
                  ),
                  SvgPicture.asset(Assets.wallet),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              /// رقم البطاقة وتاريخ الانتهاء
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.f12w400(context)
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.f12w400(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
