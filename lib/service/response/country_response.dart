import 'package:distance_guard_flutter/service/response/country_info_response.dart';

class CountryResponse {
  final int updated;
  final String country;
  final CountryInfoResponse countryInfo;
  final int cases;
  final int todayCases;
  final int deaths;
  final int todayDeaths;
  final int recovered;
  final int todayRecovered;
  final int active;
  final int critical;
  final int casesPerOneMillion;
  final dynamic deathsPerOneMillion;
  final int tests;
  final int testsPerOneMillion;
  final int population;
  final String continent;
  final int oneCasePerPeople;
  final int oneDeathPerPeople;
  final int oneTestPerPeople;
  final dynamic activePerOneMillion;
  final dynamic recoveredPerOneMillion;
  final dynamic criticalPerOneMillion;

  CountryResponse(
      {required this.updated,
      required this.country,
      required this.countryInfo,
      required this.cases,
      required this.todayCases,
      required this.deaths,
      required this.todayDeaths,
      required this.recovered,
      required this.todayRecovered,
      required this.active,
      required this.critical,
      required this.casesPerOneMillion,
      required this.deathsPerOneMillion,
      required this.tests,
      required this.testsPerOneMillion,
      required this.population,
      required this.continent,
      required this.oneCasePerPeople,
      required this.oneDeathPerPeople,
      required this.oneTestPerPeople,
      required this.activePerOneMillion,
      required this.recoveredPerOneMillion,
      required this.criticalPerOneMillion});

  factory CountryResponse.fromJson(Map<String, dynamic> json) {
    final updated = json['updated'];
    final country = json['country'];
    final countryInfo = CountryInfoResponse.fromJson(json['countryInfo']);
    final cases = json['cases'];
    final todayCases = json['todayCases'];
    final deaths = json['deaths'];
    final todayDeaths = json['todayDeaths'];
    final recovered = json['recovered'];
    final todayRecovered = json['todayRecovered'];
    final active = json['active'];
    final critical = json['critical'];
    final casesPerOneMillion = json['casesPerOneMillion'];
    final deathsPerOneMillion = json['deathsPerOneMillion'];
    final tests = json['tests'];
    final testsPerOneMillion = json['testsPerOneMillion'];
    final population = json['population'];
    final continent = json['continent'];
    final oneCasePerPeople = json['oneCasePerPeople'];
    final oneDeathPerPeople = json['oneDeathPerPeople'];
    final oneTestPerPeople = json['oneTestPerPeople'];
    final activePerOneMillion = json['activePerOneMillion'];
    final recoveredPerOneMillion = json['recoveredPerOneMillion'];
    final criticalPerOneMillion = json['criticalPerOneMillion'];
    return CountryResponse(
        updated: updated,
        country: country,
        countryInfo: countryInfo,
        cases: cases,
        todayCases: todayCases,
        deaths: deaths,
        todayDeaths: todayDeaths,
        recovered: recovered,
        todayRecovered: todayRecovered,
        active: active,
        critical: critical,
        casesPerOneMillion: casesPerOneMillion,
        deathsPerOneMillion: deathsPerOneMillion,
        tests: tests,
        testsPerOneMillion: testsPerOneMillion,
        population: population,
        continent: continent,
        oneCasePerPeople: oneCasePerPeople,
        oneDeathPerPeople: oneDeathPerPeople,
        oneTestPerPeople: oneTestPerPeople,
        activePerOneMillion: activePerOneMillion,
        recoveredPerOneMillion: recoveredPerOneMillion,
        criticalPerOneMillion: criticalPerOneMillion);
  }
}
