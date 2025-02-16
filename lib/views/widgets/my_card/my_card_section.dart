import 'dart:async';
import 'package:dashboard/views/widgets/all_expenses/all_expenses_header_item.dart';
import 'package:dashboard/views/widgets/income/income_header.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/core/utils/app_colors.dart';
import 'package:dashboard/views/widgets/dots_list.dart';
import 'package:dashboard/views/widgets/my_card/my_card_page_view.dart';
import '../../../core/utils/app_styles.dart';
import '../income/income_section.dart';
import '../transaction/transaction_history.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    pageController = PageController();

    // استماع لتغيير الصفحة
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });

    // تشغيل الـ auto-scroll كل 3 ثواني
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      int nextPage = (currentPageIndex + 1) %
          3; // الانتقال للصفحة التالية أو الرجوع للأولى
      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    _timer.cancel(); // إيقاف التايمر عند التخلص من الـ widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Card",
                    style: AppStyles.f20w600(context)
                        .copyWith(color: AppColors.secondColor),
                  ),
                  const SizedBox(height: 10),
                  MyCardsPageView(pageController: pageController),
                  const SizedBox(height: 10),
                  DotsList(currentPageIndex: currentPageIndex),
                  const SizedBox(height: 10),
                  Divider(
                    height: 2,
                  ),
                  const SizedBox(height: 10),
                  TransactionHistory()
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          IncomeSection()
        ],
      ),
    );
  }
}
