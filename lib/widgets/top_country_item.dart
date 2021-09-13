import 'package:distance_guard_flutter/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopCountryItem extends StatelessWidget {
  const TopCountryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 160.0,
        decoration: BoxDecoration(
          color: MyAppColor.primaryGreen,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              SvgPicture.asset('images/ic_deaths.svg'),
              SizedBox(height: 5),
              Text(
                'Iran',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                '+9.657',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20.0),
              _buildCountComponent('Deaths', '+170'),
              _buildCountComponent('Recovered', '+14.799'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCountComponent(String title, String count) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              count,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
