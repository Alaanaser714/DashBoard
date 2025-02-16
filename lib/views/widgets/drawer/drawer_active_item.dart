import 'package:dashboard/core/utils/app_colors.dart';
import 'package:dashboard/models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_styles.dart';

class DrawerActiveItem extends StatelessWidget {
  const DrawerActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(drawerItemModel.image),
        SizedBox(
          width: 16,
        ),
        Text(drawerItemModel.title,
            style: AppStyles.f16w600(context).copyWith(
              color: AppColors.primaryColor,
            )),
        Spacer(),
        Container(
          color: AppColors.primaryColor,
          width: 5,
          height: MediaQuery.of(context).size.height * 0.05,
        )
      ],
    );
  }
}
