import 'package:expense_tracker/widgets/expense_list.dart';
import 'package:expense_tracker/widgets/new_expense_modal.dart';
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

  void _openAddExpenseOverlay() {
    showModalBottomSheet(context: context, builder: (ctx) => const NewExpenseModal());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        actions: [
          IconButton(
              onPressed: _openAddExpenseOverlay,
              icon: const Icon(Icons.add)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Expense Tracker"),
          Expanded(child: ExpenseList(expenses: _registeredExpense))
        ],
      ),
      ),
    );
  }
}
