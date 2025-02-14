import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/views/widgets/drawer_active_item.dart';
import 'package:dashboard/views/widgets/in_active_drawer.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? DrawerActiveItem(drawerItemModel: drawerItemModel)
        : InActiveDrawer(drawerItemModel: drawerItemModel);
  }
}
