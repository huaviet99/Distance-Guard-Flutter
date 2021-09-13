import 'package:distance_guard_flutter/constants/colors.dart';
import 'package:distance_guard_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextStyle _appBarTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: MyAppColor.primaryBlue,
    fontSize: 18.0,
  );

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
          titleTextStyle: _appBarTextStyle,
        ),
      ),
      home: HomePage(),
    );
  }
}
