import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:TicetBookingApp/utils/app_styles.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIcon({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18)),
      child: Row(children: [
        Icon(
          icon,
          color: Color.fromARGB(255, 114, 112, 112),
        ),
        Gap(10),
        Text(
          text,
          style: Styles.textStyle,
        )
      ]),
    );
  }
}
