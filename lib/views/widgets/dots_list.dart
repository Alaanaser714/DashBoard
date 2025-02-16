import 'package:dashboard/views/widgets/custom_dots_widgets.dart';
import 'package:flutter/material.dart';

class DotsList extends StatelessWidget {
  const DotsList({super.key, required this.currentPageIndex});

  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotsWidgets(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
