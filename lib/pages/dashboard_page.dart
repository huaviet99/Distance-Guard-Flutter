import 'package:distance_guard_flutter/constants/colors.dart';
import 'package:distance_guard_flutter/widgets/latest_update_card.dart';
import 'package:distance_guard_flutter/widgets/top_country_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildLatestUpdateComponent(),
            SizedBox(height: 20),
            _buildTopCountriesComponent(),
          ],
        ),
      ),
    );
  }

  Widget _buildLatestUpdateComponent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Covid-19 Latest Update',
          style: TextStyle(
            fontSize: 18.0,
            color: MyAppColor.primaryBlue,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 2),
        Text(
          'Last update June 03, 2021 23:29:21',
          style: TextStyle(
            fontSize: 12.0,
            color: MyAppColor.unselectedColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            LatestUpdateCard(
              title: 'Cases',
              titleColor: MyAppColor.primaryBlue,
              icon: SvgPicture.asset(
                'images/ic_cases.svg',
              ),
              colorList: [
                Color(0xFFE6F2FF),
                Colors.white,
              ],
            ),
            SizedBox(width: 10),
            LatestUpdateCard(
              title: 'Recovered',
              titleColor: MyAppColor.primaryGreen,
              icon: SvgPicture.asset(
                'images/ic_recovered.svg',
              ),
              colorList: [
                Color(0xFFE9FAEE),
                Colors.white,
              ],
            ),
            SizedBox(width: 10),
            LatestUpdateCard(
              title: 'Deaths',
              titleColor: MyAppColor.primaryRed,
              icon: SvgPicture.asset(
                'images/ic_deaths.svg',
              ),
              colorList: [
                Color(0xFFFFEFF2),
                Colors.white,
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTopCountriesComponent() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Countries',
            style: TextStyle(
              fontSize: 18.0,
              color: MyAppColor.primaryBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TopCountryItem(),
                TopCountryItem(),
                TopCountryItem(),
                TopCountryItem(),
                TopCountryItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
