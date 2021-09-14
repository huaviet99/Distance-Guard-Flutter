import 'package:distance_guard_flutter/constants/colors.dart';
import 'package:distance_guard_flutter/service/covid_service.dart';
import 'package:distance_guard_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  CovidService covidService = CovidService();
  @override
  void initState() {
    super.initState();
    covidService.fetchCountryListSortedByTodayCases();
  }

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
            _buildSloganComponent(),
            SizedBox(height: 20),
            _buildLatestUpdateComponent(),
            SizedBox(height: 20),
            _buildTopCountriesComponent(),
            SizedBox(height: 20),
            _buildSpreadTrendsComponent(),
          ],
        ),
      ),
    );
  }

  Widget _buildSloganComponent() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFFF4B63),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          SvgPicture.asset('images/img_slogan_character.svg'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 8, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Need Basic\nCOVID-19 Information?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      height: 30.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Color(0xFFFF4B63),
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Click here',
                          style: TextStyle(
                            color: Color(0xFFFF4B63),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
    return Column(
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
        SizedBox(height: 10),
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
    );
  }

  Widget _buildSpreadTrendsComponent() {
    return Column(
      children: [
        Text(
          'Spread Trends',
          style: TextStyle(
            fontSize: 18.0,
            color: MyAppColor.primaryBlue,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
