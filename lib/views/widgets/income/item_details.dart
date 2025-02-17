import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';
import '../../../models/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            color: itemDetailsModel.color,
            shape: const OvalBorder(),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          itemDetailsModel.title,
          style: AppStyles.f12w400(context),
        ),
        Spacer(),
        Text(
          itemDetailsModel.value,
          style: AppStyles.f14w400(context),
        ),
      ],
    );
    //
    // ListTile(
    //   leading: Container(
    //     width: 12,
    //     height: 12,
    //     decoration: ShapeDecoration(
    //       color: itemDetailsModel.color,
    //       shape: const OvalBorder(),
    //     ),
    //   ),
    //   title: Text(
    //     itemDetailsModel.title,
    //     style: AppStyles.f12w400(context),
    //   ),
    //   trailing: Text(
    //     itemDetailsModel.value,
    //     style: AppStyles.f14w400(context),
    //   ),
    // );
  }
}
