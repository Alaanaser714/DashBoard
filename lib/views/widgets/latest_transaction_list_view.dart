import 'package:dashboard/models/user_info_model.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_assets.dart';
import 'user_info_item.dart';

class LatestTransactionlistView extends StatelessWidget {
  const LatestTransactionlistView({super.key});

  final List<UserInfoModel> userinfoList = const [
    UserInfoModel(
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
      image: Assets.info,
    ),
    UserInfoModel(
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
      image: Assets.info,
    ),
    UserInfoModel(
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
      image: Assets.info,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: userinfoList.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: UserInfoItem(
                userInfoModel: userinfoList[index],
              ),
            );
          }),
    );
  }
}
