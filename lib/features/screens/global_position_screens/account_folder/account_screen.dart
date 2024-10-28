import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  final double balance = 1500.0;
  final double incomes = 2000.0;
  final double outcomes = 500.0;

  // Lista de movimientos
  final List<Map<String, dynamic>> movements = [
    {"type": "Income", "Ammount": 800.0, "date": "01/10/2024"},
    {"type": "Income", "Ammount": 1200.0, "date": "05/10/2024"},
    {"type": "Spending", "Ammount": 200.0, "date": "10/10/2024"},
    {"type": "Spending", "Ammount": 300.0, "date": "15/10/2024"},
    {"type": "Spending", "Ammount": 100.0, "date": "20/10/2024"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Account")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Balance: ${balance.toStringAsFixed(2)} €",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Money In- and Outcomes",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCard("Incomes", incomes, Colors.green),
                  _buildCard("Outcomes", outcomes, Colors.red),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Last Movements",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: movements.length,
                itemBuilder: (context, index) {
                  final movement = movements[index];
                  return ListTile(
                    title: Text("${movement['type']}"),
                    subtitle: Text(
                        "Ammount: \$${movement['amount']} - Data: ${movement['data']}"),
                    trailing: Icon(
                      movement['type'] == "Income"
                          ? Icons.arrow_upward
                          : Icons.arrow_downward,
                      color: movement['type'] == "Income"
                          ? Colors.green
                          : Colors.red,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, double amount, Color color) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "${amount.toStringAsFixed(2)} €",
                style: TextStyle(
                  fontSize: 18,
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
