import 'package:bankingapp/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5FA),
      body: Stack(
        children: const [
          Body(),
          Positioned(left: 0, right: 0, bottom: 0, child: BottomBar())
        ],
      ),
      appBar: buildAppBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xffF4F5FA),
      elevation: 0,
      centerTitle: false,
      title: Text(
        "My accounts",
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24),
      ),
      actions: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: SvgPicture.asset("assets/icons/notifs.svg"),
        )
      ],
    );
  }
}
