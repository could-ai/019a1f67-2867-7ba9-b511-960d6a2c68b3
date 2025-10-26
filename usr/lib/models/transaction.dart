import 'package:flutter/material.dart';

class Transaction {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;
  final String time;

  Transaction({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.time,
  });
}
