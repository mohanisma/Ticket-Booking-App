import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:TicetBookingApp/screens/thick_view2.dart';
import 'package:TicetBookingApp/screens/ticket_view.dart';
import 'package:TicetBookingApp/utils/App_list.dart';
import 'package:TicetBookingApp/utils/app_styles.dart';

class View extends StatelessWidget {
  // final Map<String, dynamic> ticket;
  // const View({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Styles.primaryColor,
            appBar: AppBar(
              title: Text("All Upcoming Flights"),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(top: 20, right: 20, bottom: 30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.only(bottom: 50),
                          height: 200,
                          width: 85,
                          decoration: BoxDecoration(
                              color: Styles.primaryColor,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("images/flight.png"))),
                        ),
                        title: Text(
                          "Hargeysa To Jigjiga",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                        subtitle: Text(
                          "Blue Sky",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.bgColor),
                        ),
                        trailing: Text(
                          "\$100",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                      ),
                      onTap: (() => print("you clicked")),
                    ),
                    Gap(20),
                    GestureDetector(
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          height: 200,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("images/flight.png"))),
                        ),
                        title: Text(
                          "JigJiga To Garoowe",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                        subtitle: Text(
                          "Al Baxar Travel Agency",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.bgColor),
                        ),
                        trailing: Text(
                          "\$120",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                      ),
                      onTap: (() => print("you clicked")),
                    ),
                    Gap(20),
                    GestureDetector(
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          height: 200,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("images/flight.png"))),
                        ),
                        title: Text(
                          "Mogadisho To Dhuusamareeb",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                        subtitle: Text(
                          "BULBUL Travel Agency",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.bgColor),
                        ),
                        trailing: Text(
                          "\$130",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                      ),
                      onTap: (() => print("you clicked")),
                    ),
                    Gap(20),
                    GestureDetector(
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          height: 200,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("images/flight.png"))),
                        ),
                        title: Text(
                          "kismaayo To Garoowe",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                        subtitle: Text(
                          "Blue Sky",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.bgColor),
                        ),
                        trailing: Text(
                          "\$150",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                      ),
                      onTap: (() => print("you clicked")),
                    ),
                    Gap(20),
                    GestureDetector(
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          height: 200,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("images/flight.png"))),
                        ),
                        title: Text(
                          "Mogadisho To Kismayo",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                        subtitle: Text(
                          "Mog To Kis",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.bgColor),
                        ),
                        trailing: Text(
                          "\$60",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                      ),
                      onTap: (() => print("you clicked")),
                    ),
                    Gap(20),
                    GestureDetector(
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          height: 200,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("images/flight.png"))),
                        ),
                        title: Text(
                          "Mogadisho To Hargeysa",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                        subtitle: Text(
                          "Blue Sky",
                          style: Styles.headLineStyle4
                              .copyWith(color: Styles.bgColor),
                        ),
                        trailing: Text(
                          "\$200",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                      ),
                      onTap: (() => print("you clicked")),
                    ),
                    Gap(20),
                    GestureDetector(
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          height: 200,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("images/flight.png"))),
                        ),
                        title: Text(
                          "Mogadisho To Jawhar",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                        subtitle: Text(
                          "BulBul Travel Agency",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.bgColor),
                        ),
                        trailing: Text(
                          "\$100",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                      ),
                      onTap: (() => print("you clicked")),
                    ),
                    Gap(20),
                    GestureDetector(
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          height: 200,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("images/flight.png"))),
                        ),
                        title: Text(
                          "Kismaayo To Cadaado",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                        subtitle: Text(
                          "Al huda Travel Agncey",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.bgColor),
                        ),
                        trailing: Text(
                          "\$130",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                      ),
                      onTap: (() => print("you clicked")),
                    ),
                    Gap(20),
                    GestureDetector(
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          height: 200,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("images/flight.png"))),
                        ),
                        title: Text(
                          "Garoowe To Boosasso",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                        subtitle: Text(
                          "Blue Sky",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.bgColor),
                        ),
                        trailing: Text(
                          "\$100",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                      ),
                      onTap: (() => print("you clicked")),
                    ),
                    Gap(20),
                    GestureDetector(
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          height: 200,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("images/flight.png"))),
                        ),
                        title: Text(
                          "Baydhabo To Kismayo",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                        subtitle: Text(
                          "Albaxar Travel Agency",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.bgColor),
                        ),
                        trailing: Text(
                          "\$120",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                      ),
                      onTap: (() => print("you clicked")),
                    ),
                    Gap(20),
                    GestureDetector(
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          height: 200,
                          width: 85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("images/flight.png"))),
                        ),
                        title: Text(
                          "Mogadisho To Garoowe",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                        subtitle: Text(
                          "Blue Sky",
                          style: Styles.headLineStyle3
                              .copyWith(color: Styles.bgColor),
                        ),
                        trailing: Text(
                          "\$150",
                          style: Styles.headLineStyle1
                              .copyWith(color: Styles.bgColor),
                        ),
                      ),
                      onTap: (() => print("you clicked")),
                    ),
                  ]
                  // GestureDetector(
                  //   child: Ticket_view(),
                  //   onTap: (() => print("you clicked")),
                  // ),
                  ),
            )));
  }
}
