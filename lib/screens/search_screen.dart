import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:TicetBookingApp/screens/App_icon_and_text.dart';
import 'package:TicetBookingApp/screens/view.dart';
import 'package:TicetBookingApp/utils/app_layout.dart';
import 'package:TicetBookingApp/utils/app_styles.dart';
import 'package:TicetBookingApp/utils/ticket_tab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(40),
          Text(
            "What are\nyou Looking For?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(20),
          AppTicketTab(FirstTab: "Today", SecondTab: "Tommorow"),
          Gap(20),
          const AppIcon(text: "departure", icon: Icons.flight_takeoff_rounded),
          Gap(20),
          const AppIcon(text: "Arrival", icon: Icons.flight_land_rounded),
          Gap(25),
          GestureDetector(
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(18)),
                child: Center(
                    child: Text(
                  "Find Tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ))),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: ((context) => View())),
            ),
          ),
          const Gap(20),
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
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ))
            ],
          ),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 425,
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/img-1.png"))),
                    ),
                    Gap(12),
                    Text(
                      "%20 Discount on the early booking of this flight. Don't Miss out this chance.",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: 210,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "%20 Discount\nFor survey",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Gap(10),
                        Text(
                          "Take the survey about our serivices and get discount",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Gap(15),
                  Container(
                    width: size.width * 0.44,
                    height: 200,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Styles.orangeColor),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(5),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: '@', style: TextStyle(fontSize: 38)),
                          TextSpan(text: '@', style: TextStyle(fontSize: 50)),
                          TextSpan(text: '@', style: TextStyle(fontSize: 38))
                        ]))
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
