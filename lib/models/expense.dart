import 'package:expense_tracker/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category {
  food,
  transportation,
  schoolMaterials,
  electricity,
  accommodation,
  airtimeAndData
}

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.transportation: Icons.bike_scooter,
  Category.schoolMaterials: Icons.school,
  Category.electricity: Icons.electric_bolt,
  Category.accommodation: Icons.house,
  Category.airtimeAndData: Icons.signal_wifi_connected_no_internet_4_rounded,
};

class Expense {

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate  {
    return dateFormatter.format(date);
  }
}