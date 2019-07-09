import 'package:flutter/material.dart';
import 'dart:async';
import 'package:coininfo/src/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static final routerName = '/splash_screen';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
        Duration(seconds: 3),
      ),
      builder: (context, data) {
        if (data.connectionState == ConnectionState.done) {
          return HomeScreen();
        }
        return scaffold(context);
      },
    );
  }
}

Widget scaffold(BuildContext context) {
  return Scaffold(
    backgroundColor: Theme.of(context).backgroundColor,
    body: Center(
      child: Text(
        'CoinInfo',
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 50.0,
        ),
      ),
    ),
  );
}
