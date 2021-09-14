import 'package:equatable/equatable.dart';

abstract class WorldwideEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class WorldwideFetch extends WorldwideEvent {}
