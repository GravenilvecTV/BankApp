import 'package:flutter/material.dart';
import 'item_action.dart';

class ActionItems extends StatelessWidget {
  const ActionItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ActionItem(
            iconPath: "assets/icons/top_up.svg",
            title: "Top up",
            press: () {},
          ),
          ActionItem(
            iconPath: "assets/icons/pay.svg",
            title: "Pay",
            press: () {},
          ),
          ActionItem(
            iconPath: "assets/icons/send.svg",
            title: "Send",
            press: () {},
          ),
          ActionItem(
            iconPath: "assets/icons/more.svg",
            title: "More",
            press: () {},
          ),
        ],
      ),
    );
  }
}
