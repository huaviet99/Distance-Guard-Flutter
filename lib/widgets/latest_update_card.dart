import 'package:flutter/material.dart';
import 'package:distance_guard_flutter/utils/app_utils.dart';

class LatestUpdateCard extends StatelessWidget {
  final List<Color> colorList;
  final Widget icon;
  final String title;
  final Color? titleColor;
  final int cases;
  final int todayCases;
  LatestUpdateCard(
      {required this.colorList,
      required this.icon,
      required this.title,
      this.titleColor,
      this.cases = 0,
      this.todayCases = 0});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: LinearGradient(
            colors: this.colorList,
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            stops: [0.0, 1.0],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
          child: Column(
            children: [
              icon,
              SizedBox(height: 20),
              Text(
                AppUtils.toNumberWithCommas(this.cases),
                style: TextStyle(
                    color: this.titleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
              Text(
                '(+${AppUtils.toNumberWithCommas(this.todayCases)})',
                style: TextStyle(
                  color: this.titleColor,
                ),
              ),
              SizedBox(height: 20),
              Text(
                this.title,
                style: TextStyle(color: this.titleColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
