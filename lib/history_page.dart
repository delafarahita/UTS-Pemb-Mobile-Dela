import 'package:flutter/material.dart';

class Transaction {
  final String type;
  final String amount;
  final String dateTime;
  final String status;
  final String notes;

  Transaction({required this.type, required this.amount, required this.dateTime, required this.status, required this.notes});
}

class HistoryPage extends StatelessWidget {
  final List<Transaction> pendingTransactions = [
    Transaction(type: 'Pay Merchant', amount: 'Rp45.400', dateTime: '15 Sep 2024, 17:32 WIB', status: 'Pending', notes: 'Indomaret_purchase'),
    Transaction(type: 'Pay QRIS', amount: 'Rp15.000', dateTime: '29 Aug 2024, 11:49 WIB', status: 'Pending', notes: 'Alfamart_purchase'),
  ];

  final List<Transaction> doneTransactions = [
    Transaction(type: 'Pay Merchant', amount: 'Rp55.000', dateTime: '15 Sep 2024, 17:28 WIB', status: 'Success', notes: 'Indomaret_purchase'),
    Transaction(type: 'Top Up from Bank', amount: 'Rp100.000', dateTime: '15 Sep 2024, 17:25 WIB', status: 'Success', notes: 'Top Up from Dana 6281234567890'),
    Transaction(type: 'Pay QRIS', amount: 'Rp21.000', dateTime: '31 Aug 2024, 11:49 WIB', status: 'Success', notes: 'SBY - MOG TP S1'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Transaction History', style: TextStyle(color: Colors.black)),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'Done'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildTransactionList(pendingTransactions),
            _buildTransactionList(doneTransactions),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionList(List<Transaction> transactions) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return Card(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(transaction.type, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(transaction.amount, style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(transaction.dateTime),
                    Text(transaction.status, style: TextStyle(color: transaction.status == 'Success' ? Colors.green : Colors.red)),
                  ],
                ),
                Divider(color: Colors.grey),
                Text(transaction.notes, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HistoryPage(),
  ));
}
