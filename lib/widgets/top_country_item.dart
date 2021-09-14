import 'package:distance_guard_flutter/service/response/country_response.dart';
import 'package:distance_guard_flutter/utils/app_utils.dart';
import 'package:flutter/material.dart';

class TopCountryItem extends StatelessWidget {
  final CountryResponse countryResponse;
  final int index;

  TopCountryItem(this.countryResponse, this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 160.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: _buildItemColorList(index),
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            stops: [0.0, 1.0],
          ),
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
              Image.network(
                this.countryResponse.countryInfo.flag,
                width: 40,
                height: 25,
              ),
              SizedBox(height: 5),
              Text(
                this.countryResponse.country,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                '+${AppUtils.toNumberWithCommas(this.countryResponse.todayCases)}',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20.0),
              _buildCountComponent('Deaths',
                  '+${AppUtils.toNumberWithCommas(this.countryResponse.todayDeaths)}'),
              _buildCountComponent('Recovered',
                  '+${AppUtils.toNumberWithCommas(this.countryResponse.todayRecovered)}'),
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

  List<Color> _buildItemColorList(int index) {
    switch (index) {
      case 0:
        return [Color(0xFFff8585), Color(0xFFff9696)];
      case 1:
        return [Color(0xFFfdb385), Color(0xFFfdbb92)];
      case 2:
        return [Color(0xFF3395ff), Color(0xFF4da3ff)];

      case 3:
        return [Color(0xFF77ccfd), Color(0xFF85d1fd)];

      case 4:
        return [Color(0xFF4DD977), Color(0xFF64DD88)];

      default:
        return [Color(0xFF4DD977), Color(0xFF64DD88)];
    }
  }
}
