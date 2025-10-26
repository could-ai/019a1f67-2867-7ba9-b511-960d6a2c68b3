import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/transaction.dart';
import 'package:couldai_user_app/widgets/transaction_list_item.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final List<Transaction> transactions = [
    Transaction(
      icon: Icons.shopping_bag,
      title: 'Shopping',
      subtitle: 'buy some grocery',
      amount: '-\$120',
      time: '10:00 AM',
    ),
    Transaction(
      icon: Icons.fastfood,
      title: 'Burger',
      subtitle: 'eat burger',
      amount: '-\$55',
      time: '11:30 AM',
    ),
    Transaction(
      icon: Icons.subscriptions,
      title: 'Subscription',
      subtitle: 'disney plus annual',
      amount: '-\$150',
      time: '01:30 PM',
    ),
     Transaction(
      icon: Icons.medical_services,
      title: 'Health',
      subtitle: 'buy some medicine',
      amount: '-\$80',
      time: '03:00 PM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'T R A N S A C T I O N',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Yesterday',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  return TransactionListItem(transaction: transactions[index]);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}
