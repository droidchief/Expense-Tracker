import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NewExpenseModal extends StatefulWidget {
  const NewExpenseModal({super.key});

  @override
  State<NewExpenseModal> createState() => _NewExpenseModalState();
}

class _NewExpenseModalState extends State<NewExpenseModal> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text("Title")
            ),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefix: Text("\$ "),
              label: Text("Amount")
            ),
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel")
              ),
              ElevatedButton(
                  onPressed: () {
                    debugPrint(_titleController.text);
                    debugPrint(_amountController.text);
                  },
                  child: const Text("Save expense")
              )
            ],
          )
        ],
      ),
    );
  }
}
