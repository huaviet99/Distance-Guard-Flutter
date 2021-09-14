import 'package:distance_guard_flutter/service/response/country_response.dart';
import 'package:distance_guard_flutter/service/response/worldwide_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CovidService {
  final _baseUrl = 'www.disease.sh';
  final _client = http.Client();

  Future<WorldwideResponse> fetchWorldwideData() async {
    final uri = Uri.https(_baseUrl, '/v3/covid-19/all');

    final response = await _client.get(uri);
    final json = convert.jsonDecode(response.body);

    return WorldwideResponse.fromJson(json);
  }

  Future<List<CountryResponse>> fetchCountryListSortedByTodayCases() async {
    final queryParameters = {
      'sort': 'todayCases',
    };

    final uri = Uri.https(_baseUrl, '/v3/covid-19/countries', queryParameters);

    final response = await _client.get(uri);
    final json = convert.jsonDecode(response.body);
    final countryList = (json as List)
        .map((country) => CountryResponse.fromJson(country))
        .toList();

    return countryList;
  }
}
