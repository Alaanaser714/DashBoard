// ignore_for_file: must_be_immutable

import 'package:dashboard/views/widgets/custom_button.dart';
import 'package:dashboard/views/widgets/custom_text_field.dart';
import 'package:dashboard/views/widgets/transaction/latest_transaction_widget.dart';
import 'package:flutter/material.dart';

import 'quick_voice_headers.dart';

class QuickVoiceWidget extends StatefulWidget {
  const QuickVoiceWidget({super.key});

  @override
  State<QuickVoiceWidget> createState() => _QuickVoiceWidgetState();
}

class _QuickVoiceWidgetState extends State<QuickVoiceWidget> {
  String selectedButton = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickVoiceheaders(),
            const SizedBox(height: 28),
            LatestTransactionWidget(),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hintText: "Type customer name",
                    text: 'Customer name',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomTextField(
                    hintText: "Type customer email",
                    text: 'Customer Email',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hintText: "Type customer name",
                    text: 'Item name',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomTextField(
                    hintText: "USD",
                    text: 'Item amount',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedButton = "addMore";
                      });
                    },
                    child: CustomButton(
                      text: "Add more details",
                      isActive: selectedButton == "addMore",
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedButton = "sendMoney";
                      });
                    },
                    child: CustomButton(
                      text: "Send Money",
                      isActive: selectedButton == "sendMoney",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
