import 'package:distance_guard_flutter/blocs/worldwide/worldwide_event.dart';
import 'package:distance_guard_flutter/blocs/worldwide/worldwide_state.dart';
import 'package:distance_guard_flutter/service/covid_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorldwideBloc extends Bloc<WorldwideEvent, WorldwideState> {
  final _covidService = CovidService();

  WorldwideBloc() : super(WorldwideFetchedInitial());

  @override
  Stream<WorldwideState> mapEventToState(WorldwideEvent event) async* {
    if (event is WorldwideFetch) {
      yield* _mapWorldwideFetchToState();
    }
  }

  Stream<WorldwideState> _mapWorldwideFetchToState() async* {
    final worldwideResponse = await _covidService.fetchWorldwideData();
    yield WorldwideFetchedSuccess(worldwideResponse: worldwideResponse);
  }
}
