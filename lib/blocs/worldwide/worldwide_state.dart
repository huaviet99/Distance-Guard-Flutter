import 'package:distance_guard_flutter/service/response/worldwide_response.dart';
import 'package:equatable/equatable.dart';

abstract class WorldwideState extends Equatable {
  const WorldwideState();

  @override
  List<Object?> get props => [];
}

class WorldwideFetchedSuccess extends WorldwideState {
  final WorldwideResponse worldwideResponse;

  const WorldwideFetchedSuccess({required this.worldwideResponse});

  @override
  List<Object?> get props => [worldwideResponse];
}

class WorldwideFetchedInitial extends WorldwideState {}

class WorldwideFetchFailure extends WorldwideState {}
