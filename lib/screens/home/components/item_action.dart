import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActionItem extends StatelessWidget {
  const ActionItem(
      {super.key,
      required this.iconPath,
      required this.title,
      required this.press});

  final String iconPath;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: press,
          child: Container(
            height: 62,
            width: 62,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 8),
                      blurRadius: 10,
                      color: Colors.black.withOpacity(0.22))
                ],
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: SvgPicture.asset(
              iconPath,
              height: 25,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(title, style: TextStyle(color: Colors.black))
      ],
    );
  }
}
