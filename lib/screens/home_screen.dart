import 'package:TicetBookingApp/pages/login.dart';
import 'package:TicetBookingApp/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:TicetBookingApp/screens/Hotel_Screen.dart';
import 'package:TicetBookingApp/screens/thick_view2.dart';
import 'package:TicetBookingApp/screens/ticket_view.dart';
import 'package:TicetBookingApp/screens/view.dart';
import 'package:TicetBookingApp/utils/App_list.dart';
import 'package:TicetBookingApp/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        actions: [
          IconButton(
              color: Styles.bgColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              icon: Icon(Icons.logout_outlined))
        ],
        title: Text('Tickets',
            style: Styles.headLineStyle1.copyWith(color: Colors.white)),
      ),
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('images/img-1.png'))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    GestureDetector(
                        onTap: (() => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => View()))),
                        child: Text(
                          "View all",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ))
                  ],
                )
              ],
            ),
          ),
          const Gap(10),
          GestureDetector(
            onTap: () => print("cilicked"),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(right: 20),
              child: Row(
                children: flightList
                    .map((singlrticket) => Ticket_view2(
                          ticket: singlrticket,
                        ))
                    .toList(),
              ),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tommorrow",
                  style: Styles.headLineStyle2,
                ),
                GestureDetector(
                    onTap: (() => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => View()))),
                    child: Text(
                      "View all",
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ))
              ],
            ),
          ),
          const Gap(15),
          GestureDetector(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: flightList
                  .map((singlrticket) => Ticket_view2(
                        ticket: singlrticket,
                      ))
                  .toList(),
            ),
          ))
          // const Gap(100)
        ],
      ),
    );
  }
}
