import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.only(top: 20),
      height: size.height * 0.11,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 15,
            color: Colors.black.withOpacity(0.15))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          BottomNavItem(
              label: "Accounts",
              icon: "assets/icons/accounts.svg",
              selected: true),
          BottomNavItem(
              label: "Statistics",
              icon: "assets/icons/statistics.svg",
              selected: false),
          BottomNavItem(
              label: "Cashback",
              icon: "assets/icons/cashback.svg",
              selected: false),
          BottomNavItem(
              label: "Settings",
              icon: "assets/icons/settings.svg",
              selected: false),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem(
      {super.key,
      required this.icon,
      required this.label,
      required this.selected});

  final String icon, label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(icon),
        SizedBox(height: (selected ? 7 : 3)),
        Text(label,
            style: TextStyle(
                color: (selected ? Colors.blue : Colors.grey),
                fontWeight: FontWeight.w400))
      ],
    );
  }
}
