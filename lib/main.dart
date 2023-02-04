import 'package:TicetBookingApp/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:TicetBookingApp/pages/MiddleWare.dart';
import 'package:TicetBookingApp/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Ticket Booking App",
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
