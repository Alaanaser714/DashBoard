import 'package:dashboard/views/widgets/in_active_drawer.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_assets.dart';
import '../../models/drawer_item_model.dart';
import 'drawer_list_item.dart';
import 'user_info_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
                child: UserInfoItem(
              title: "Lekan Okeowo",
              subTitle: "demo@gmail.com",
              image: Assets.info,
            )),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 25,
              ),
            ),
            DrawerListItem(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  InActiveDrawer(
                      drawerItemModel: DrawerItemModel(
                    title: "Setting system",
                    image: Assets.setting,
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  InActiveDrawer(
                      drawerItemModel: DrawerItemModel(
                    title: "Logout account",
                    image: Assets.logout,
                  )),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
