import 'package:distance_guard_flutter/service/response/country_response.dart';
import 'package:equatable/equatable.dart';

abstract class CountryListState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CountryListFetchedSuccess extends CountryListState {
  final List<CountryResponse> countryList;

  CountryListFetchedSuccess({required this.countryList});

  @override
  List<Object?> get props => [countryList];
}

class CountryListFetchedInitial extends CountryListState {}

class CountryListFetchedFailure extends CountryListState {}
