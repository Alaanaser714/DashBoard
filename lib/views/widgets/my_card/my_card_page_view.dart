import 'package:dashboard/views/widgets/my_card/mycard_widget.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.hardEdge, // ✅ منع تجاوز الصفحة
      children: List.generate(
        3,
        (index) => const MycardWidget(),
      ),
    );
  }
}
