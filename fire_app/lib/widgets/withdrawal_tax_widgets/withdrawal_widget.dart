import 'package:flutter/material.dart';

class WithdrawalWidget extends StatelessWidget {
  final TextEditingController withdrawalPercentageController;
  final double withdrawalYearlyAfterBreak;
  final double taxYearlyAfterBreak;
  final VoidCallback recalculateValues;
  final VoidCallback toggleTaxNote;
  final TextEditingController withdrawalDurationController;

  const WithdrawalWidget({
    super.key,
    required this.withdrawalPercentageController,
    required this.withdrawalYearlyAfterBreak,
    required this.taxYearlyAfterBreak,
    required this.recalculateValues,
    required this.toggleTaxNote,
    required this.withdrawalDurationController,
  });

  Widget _buildWithdrawalWidget() {
    return Column(
      children: <Widget>[
        SizedBox(
          width: 305,  
          child: TextField(
            controller: withdrawalDurationController,
            decoration: const InputDecoration(labelText: 'Withdrawal Period (Years)'),
            keyboardType: TextInputType.number,
            onChanged: (value) => recalculateValues(),
          ),
        ),
        SizedBox(
          height: 45, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButton<String>(
                value: withdrawalPercentageController.text,
                items: ['3', '4', '5'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text('$value%'),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    withdrawalPercentageController.text = newValue;
                    recalculateValues();
                  }
                },
              ),
              Text(
                'Withdrawal Each Month: ${(withdrawalYearlyAfterBreak / 12).toStringAsFixed(0)} kr.-',
                style: const TextStyle(fontSize: 16),
                softWrap: true,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: toggleTaxNote,
              child: const Text(
                'Tax',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Text(
              ' on Monthly Withdrawal: ${(taxYearlyAfterBreak / 12).toStringAsFixed(0)} kr.-',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          'Monthly Withdrawal After Tax: ${((withdrawalYearlyAfterBreak / 12) - taxYearlyAfterBreak / 12).toStringAsFixed(0)} kr.-',
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildWithdrawalWidget();
  }
}
