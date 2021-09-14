class WorldwideResponse {
  final int updated;

  final int cases;
  final int todayCases;

  final int deaths;
  final int todayDeaths;

  final int recovered;
  final int todayRecovered;

  final int active;
  final int critical;

  final int casesPerOneMillion;
  final double deathsPerOneMillion;

  final int tests;
  final double testsPerOneMillion;

  final int population;
  final int oneCasePerPeople;
  final int oneDeathPerPeople;
  final int oneTestPerPeople;
  final double activePerOneMillion;
  final double recoveredPerOneMillion;
  final double criticalPerOneMillion;
  final int affectedCountries;

  WorldwideResponse(
      {required this.cases,
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
      required this.oneCasePerPeople,
      required this.oneDeathPerPeople,
      required this.oneTestPerPeople,
      required this.activePerOneMillion,
      required this.recoveredPerOneMillion,
      required this.criticalPerOneMillion,
      required this.affectedCountries,
      required this.updated});

  factory WorldwideResponse.fromJson(Map<String, dynamic> json) {
    final updated = json['updated'];
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
    final oneCasePerPeople = json['oneCasePerPeople'];
    final oneDeathPerPeople = json['oneDeathPerPeople'];
    final oneTestPerPeople = json['oneTestPerPeople'];
    final activePerOneMillion = json['activePerOneMillion'];
    final recoveredPerOneMillion = json['recoveredPerOneMillion'];
    final criticalPerOneMillion = json['criticalPerOneMillion'];
    final affectedCountries = json['affectedCountries'];
    return WorldwideResponse(
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
        oneCasePerPeople: oneCasePerPeople,
        oneDeathPerPeople: oneDeathPerPeople,
        oneTestPerPeople: oneTestPerPeople,
        activePerOneMillion: activePerOneMillion,
        recoveredPerOneMillion: recoveredPerOneMillion,
        criticalPerOneMillion: criticalPerOneMillion,
        affectedCountries: affectedCountries,
        updated: updated);
  }
}
