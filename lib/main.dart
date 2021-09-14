import 'package:distance_guard_flutter/blocs/worldwide/worldwide_bloc.dart';
import 'package:distance_guard_flutter/blocs/worldwide/worldwide_event.dart';
import 'package:distance_guard_flutter/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:distance_guard_flutter/pages/pages.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      home: BlocProvider(
          create: (context) => WorldwideBloc()..add(WorldwideFetch()),
          child: HomePage()),
    );
  }
}
