import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_assets.dart';

class DrawerListItem extends StatefulWidget {
  const DrawerListItem({
    super.key,
  });

  @override
  State<DrawerListItem> createState() => _DrawerListItemState();
}

class _DrawerListItemState extends State<DrawerListItem> {
  final List<DrawerItemModel> drawerList = const [
    DrawerItemModel(title: "Dashboard", image: Assets.category),
    DrawerItemModel(title: "My Transaction", image: Assets.convertCard),
    DrawerItemModel(title: "Statistics", image: Assets.graph),
    DrawerItemModel(title: "Wallet Account", image: Assets.wallet),
    DrawerItemModel(title: "My Investments", image: Assets.chart),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: drawerList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
            ),
            child: GestureDetector(
                onTap: () {
                  if (currentIndex != index) {
                    setState(() {
                      currentIndex = index;
                    });
                  }
                },
                child: DrawerItem(
                  drawerItemModel: drawerList[index],
                  isActive: currentIndex == index,
                )),
          );
        });
  }
}
