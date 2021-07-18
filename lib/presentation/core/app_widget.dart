import 'package:audacity_test_project/presentation/homePage/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        backgroundColor: Color(0xffFFE3E3),
        accentColor: Color(0xff628395),
        primaryColor: Color(0xffFFA0A0),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          bodyText2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
