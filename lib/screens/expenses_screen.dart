import 'package:expense_tracker/widgets/expense_list.dart';
import 'package:flutter/material.dart';

import '../models/expense.dart';
class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final List<Expense> _registeredExpense = [

    Expense(
        title: "Breakfast",
        amount: 1200.00,
        date: DateTime.now(),
        category:
        Category.food
    ),

    Expense(
        title: "Physics Textbook",
        amount: 5500.7070,
        date: DateTime.now(),
        category:
        Category.schoolMaterials
    )

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("The chart"),
        Expanded(child: ExpenseList(expenses: _registeredExpense))
      ],
    );
  }
}
