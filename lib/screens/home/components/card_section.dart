import 'package:flutter/material.dart';
import 'card.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: CardComponent(color: Colors.blue),
          ),
          CardComponent(
            color: Color(0xff060F27),
          ),
          CardComponent(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
