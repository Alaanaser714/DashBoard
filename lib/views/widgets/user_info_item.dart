import 'package:dashboard/models/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';

class UserInfoItem extends StatelessWidget {
  const UserInfoItem({
    super.key,
    required this.userInfoModel,
  });

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          userInfoModel.title,
          style: AppStyles.f16w600(context).copyWith(
            color: AppColors.secondColor,
          ),
        ),
        subtitle: Text(
          userInfoModel.subtitle,
          style: AppStyles.f12w400(context).copyWith(
            color: AppColors.lightGrey,
          ),
        ),
        leading: SvgPicture.asset(userInfoModel.image),
      ),
    );
  }
}
