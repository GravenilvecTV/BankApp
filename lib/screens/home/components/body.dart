import 'package:bankingapp/screens/home/components/card_section.dart';
import 'package:bankingapp/screens/home/components/items_actions.dart';
import 'package:bankingapp/screens/home/components/recent_transactions.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: const [
          CardSection(),
          ActionItems(),
          RecentTransactionSection()
        ],
      ),
    );
  }
}
