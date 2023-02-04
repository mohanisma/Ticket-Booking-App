import 'package:flutter/material.dart';
import 'package:TicetBookingApp/utils/app_layout.dart';
import 'package:TicetBookingApp/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      child: Column(
        children: [
          Container(
            // width: size.width * 0.5,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/jaseera.png"))),
          )
        ],
      ),
    );
  }
}
