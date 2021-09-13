import 'package:distance_guard_flutter/constants/colors.dart';
import 'package:flutter/material.dart';

class CountryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              _buildHeaderItem(),
              SizedBox(height: 10),
              _buildContentItem(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderItem() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.network(
            'https://disease.sh/assets/img/flags/af.png',
            height: 40.0,
            width: 50.0,
          ),
        ),
        SizedBox(width: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Afganistan',
              style: TextStyle(
                  color: Color(0xFF1A0628),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Last update June 16, 2021 19:32:44',
              style: TextStyle(
                fontSize: 12.0,
                color: Color(0xFF1A0628),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildContentItem() {
    return Row(
      children: [
        _buildContentCard([
          Color(0xFFE6F2FF),
          Colors.white,
        ], 'Cases', Color(0xFF007BFF), '94.919'),
        _buildContentCard([
          Color(0xFFE9FAEE),
          Colors.white,
        ], 'Recovered', MyAppColor.primaryGreen, '61.938'),
        _buildContentCard([
          Color(0xFFFFEFF2),
          Colors.white,
        ], 'Deaths', MyAppColor.primaryRed, '3.761'),
      ],
    );
  }

  Widget _buildContentCard(
      List<Color> colorList, String title, Color titleColor, String count) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: LinearGradient(
            colors: colorList,
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            stops: [0.0, 1.0],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                count,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: titleColor,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                title,
                style: TextStyle(
                  color: titleColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
