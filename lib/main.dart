import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:api_movie/pages/Detail/detailscreen.dart';
import 'package:api_movie/pages/Home/homescreen.dart';
import 'package:api_movie/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: HomeScreen(),
      // home: AnimatedSplashScreen(
      //   splash: Image.asset(
      //     'assets/gif/giphy.gif',
      //   ),
      //   nextScreen: HomeScreen(),
      //   backgroundColor: Color(0xff024E9B),
      // ),
      // ignore: missing_return
      // onGenerateRoute: (settings) {
      //   switch (settings.name) {
      //     case '/':
      //       return MaterialPageRoute(
      //         builder: (context) => HomeScreen(),
      //       );
          // case '/detail_screen':
          //   return PageRouteBuilder(
          //       pageBuilder: (context, animation, secondaryAnimation) {
          //     return DetailScreen();
          //   });
        // }
      // },
    );
  }
}
