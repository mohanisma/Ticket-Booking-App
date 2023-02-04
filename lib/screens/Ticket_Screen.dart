import 'package:TicetBookingApp/utils/App_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:TicetBookingApp/screens/ticket_view.dart';
import 'package:TicetBookingApp/utils/App_list%20copy.dart';
import 'package:TicetBookingApp/utils/app_styles.dart';
import 'package:TicetBookingApp/utils/column_layout.dart';
import 'package:TicetBookingApp/utils/ticket_tab.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            Gap(40),
            Text(
              "Tickets",
              style: Styles.headLineStyle1,
            ),
            Gap(20),
            const AppTicketTab(FirstTab: "Upcoming", SecondTab: "Previous"),
            Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Ticket_view2(
                ticket: flightList[0],
                isColor: true,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Appcolumn(
                        firstText: 'Flutter Db',
                        secondText: 'Passenger',
                        alignment: CrossAxisAlignment.start,
                      ),
                      Appcolumn(
                        firstText: '5221 665453',
                        secondText: 'Passport',
                        alignment: CrossAxisAlignment.end,
                      )
                    ],
                  ),
                  Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Appcolumn(
                          firstText: "345736871387",
                          secondText: "Number of Ticket",
                          alignment: CrossAxisAlignment.start),
                      Appcolumn(
                          firstText: "569908",
                          secondText: "Booking code",
                          alignment: CrossAxisAlignment.end)
                    ],
                  ),
                  Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Appcolumn(
                          firstText: "Visa ***2462",
                          secondText: "Payment Method",
                          alignment: CrossAxisAlignment.start),
                      Appcolumn(
                          firstText: "\$150",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Ticket_view2(ticket: flightList[0]),
            )
          ],
        )
      ]),
    );
  }
}
