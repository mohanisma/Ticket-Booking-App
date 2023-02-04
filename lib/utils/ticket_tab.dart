import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:TicetBookingApp/utils/app_layout.dart';
import 'package:TicetBookingApp/widgets/thick_container.dart';

import 'app_styles.dart';

class AppTicketTab extends StatelessWidget {
  final String FirstTab;
  final String SecondTab;
  const AppTicketTab(
      {super.key, required this.FirstTab, required this.SecondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(50)),
                    color: Colors.white),
                child: Center(
                    child: Text(FirstTab,
                        style: Styles.headLineStyle3
                            .copyWith(color: Colors.black)))),
            Container(
              width: size.width * 0.44,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(50)),
                  color: Colors.grey.shade500),
              child: Center(
                  child: Text(
                SecondTab,
                style: Styles.headLineStyle3.copyWith(color: Colors.white),
              )),
            )
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Styles.bgColor),
      ),
    );
  }
}
