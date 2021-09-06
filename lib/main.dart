import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:noor_app/contact.dart';
import 'Drugs.dart';
import 'Result.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'profile.dart';
import 'service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.green,
          accentColor: Colors.green),
      debugShowCheckedModeBanner: false,
      title: 'Clean Code',
      builder: (context, child) => Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            child!,
          ],
        ),
      ),
      home: AnimatedSplashScreen(
          duration: 2000,
          splash: Image.asset(
            'assets/images/842px-Saudi_Ministry_of_Health_Logo.svg.png',
            width: 80,
            height: 80,
          ),
          nextScreen: new LoginPage(),
          splashTransition: SplashTransition.rotationTransition,
          backgroundColor: Colors.white),
      routes: {
        'homepage': (context) {
          return homepage();
        },
        'LoginPage': (context) {
          return LoginPage();
        },
        'Contact': (context) {
          return Contact();
        },
        'Profile': (context) {
          return Profile();
        },
        'Service': (context) {
          return Service();
        },
        'Drugs': (context) {
          return Drugs();
        },
        'Result': (context) {
          return Result();
        }
      },
    );
  }
}
