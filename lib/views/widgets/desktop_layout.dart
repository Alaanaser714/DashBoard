import 'package:dashboard/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
      ],
    ));
  }
}
