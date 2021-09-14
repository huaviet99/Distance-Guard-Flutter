import 'package:distance_guard_flutter/blocs/country_list/country_list_event.dart';
import 'package:distance_guard_flutter/blocs/country_list/country_list_state.dart';
import 'package:distance_guard_flutter/service/covid_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryListBloc extends Bloc<CountryListEvent, CountryListState> {
  final CovidService _covidService = CovidService();
  CountryListBloc() : super(CountryListFetchedInitial());

  @override
  Stream<CountryListState> mapEventToState(CountryListEvent event) async* {
    if (event is CountryListFetch) {
      yield* _mapCountryListFetchToState();
    }
  }

  Stream<CountryListState> _mapCountryListFetchToState() async* {
    final countryList =
        await _covidService.fetchCountryListSortedByTodayCases();
    yield CountryListFetchedSuccess(countryList: countryList);
  }
}
