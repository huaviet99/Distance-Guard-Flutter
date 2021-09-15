import 'package:distance_guard_flutter/blocs/blocs.dart';
import 'package:distance_guard_flutter/constants/colors.dart';
import 'package:distance_guard_flutter/pages/information_page.dart';
import 'package:distance_guard_flutter/utils/app_utils.dart';
import 'package:distance_guard_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: BlocBuilder<WorldwideBloc, WorldwideState>(
          builder: (context, worldwideState) {
        return BlocBuilder<CountryListBloc, CountryListState>(
          builder: (context, countryListState) {
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildSloganComponent(),
                    SizedBox(height: 20),
                    _buildLatestUpdateComponent(worldwideState),
                    SizedBox(height: 20),
                    _buildTopCountriesComponent(countryListState),
                    SizedBox(height: 20),
                    _buildSpreadTrendsComponent(),
                  ],
                ),
              ),
            );
          },
        );
      }),
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
                        onPressed: _onSloganButtonClicked,
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

  void _onSloganButtonClicked() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => InformationPage()));
  }

  Widget _buildLatestUpdateComponent(WorldwideState worldwideState) {
    if (worldwideState is WorldwideFetchedInitial) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (worldwideState is WorldwideFetchedSuccess) {
      final worldwideResponse = worldwideState.worldwideResponse;
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
            'Last update ${AppUtils.convertMillisecondsToDateFormat(worldwideResponse.updated)}',
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
                cases: worldwideResponse.cases,
                todayCases: worldwideResponse.todayCases,
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
                cases: worldwideResponse.recovered,
                todayCases: worldwideResponse.todayRecovered,
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
                cases: worldwideResponse.deaths,
                todayCases: worldwideResponse.todayDeaths,
              ),
            ],
          ),
        ],
      );
    } else {
      return Container();
    }
  }

  Widget _buildTopCountriesComponent(CountryListState countryListState) {
    if (countryListState is CountryListFetchedInitial) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (countryListState is CountryListFetchedSuccess) {
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
          SizedBox(
            height: 180.0,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return TopCountryItem(
                    countryListState.countryList[index],
                    index,
                  );
                }),
          )
        ],
      );
    } else {
      return Container();
    }
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
