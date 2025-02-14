import 'package:dashboard/core/utils/app_colors.dart';
import 'package:dashboard/core/utils/app_styles.dart';
import 'package:dashboard/models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveDrawer extends StatelessWidget {
  const InActiveDrawer({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          drawerItemModel.image,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 16,
        ),
        Text(drawerItemModel.title,
            style: AppStyles.f16w400(context).copyWith(
              color: AppColors.secondColor,
            )),
      ],
    );
  }
}
