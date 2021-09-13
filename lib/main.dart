import 'package:distance_guard_flutter/constants/colors.dart';
import 'package:distance_guard_flutter/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
          backwardsCompatibility: false,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: MyAppColor.primaryColor,
            fontSize: 20.0,
          ),
        ),
      ),
      home: MainPage(),
    );
  }
}
