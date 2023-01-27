import 'package:bankingapp/screens/home/components/transactions.dart';
import 'package:flutter/material.dart';

class RecentTransactionSection extends StatelessWidget {
  const RecentTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 160,
            right: 160,
            child: Container(
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
            ),
          ),
          RecentTransactions()
        ],
      ),
    );
  }
}
