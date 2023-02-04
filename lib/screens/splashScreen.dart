import 'package:TicetBookingApp/pages/MiddleWare.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:TicetBookingApp/utils/App_list.dart';
import 'package:TicetBookingApp/utils/app_layout.dart';
import 'package:TicetBookingApp/utils/app_styles.dart';
import 'package:TicetBookingApp/widgets/thick_container.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => MiddleWare())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(children: [
          Image(
            image: AssetImage('images/flighticon.png'),
            width: 300,
          ),
          SizedBox(
            height: 100,
          ),
          SpinKitFadingCircle(
            color: Colors.blue,
            size: 50.0,
          )
        ]),
      ),
    );
    ;
  }
}
