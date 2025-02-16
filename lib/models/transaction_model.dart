import 'package:flutter/material.dart';

class TransactionModel {
  final String title;
  final String subtitle;
  final String price;
  final Color color;

  const TransactionModel({
    required this.color,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}
