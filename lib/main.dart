import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
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
      routes: {},
    );
  }
}
