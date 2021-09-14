import 'package:equatable/equatable.dart';

abstract class CountryListEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CountryListFetch extends CountryListEvent {}
