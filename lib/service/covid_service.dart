import 'package:distance_guard_flutter/service/response/country_response.dart';
import 'package:distance_guard_flutter/service/response/worldwide_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '';

class CovidService {
  final _baseUrl = 'www.disease.sh';
  final _client = http.Client();

  void fetchWorldwideData() async {
    final uri = Uri.https(_baseUrl, '/v3/covid-19/all');

    final response = await _client.get(uri);
    final json = convert.jsonDecode(response.body);

    print(WorldwideResponse.fromJson(json).cases);
  }

  void fetchCountryListSortedByTodayCases() async {
    final queryParameters = {
      'sort': 'todayCases',
    };

    final uri = Uri.https(_baseUrl, '/v3/covid-19/countries', queryParameters);

    final response = await _client.get(uri);
    final json = convert.jsonDecode(response.body);
    final testList =
        (json as List).map((item) => CountryResponse.fromJson(item)).toList();

    testList.forEach((element) {
      print(element.countryInfo.id);
    });
  }
}
