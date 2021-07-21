import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forth_flutter/resources/variables.dart';
import 'package:flutter/foundation.dart';

import '../view_model.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  List<LocationModel> _locationList;

  LocationsBloc() : super(LocationsState.loading());

  @override
  Stream<LocationsState> mapEventToState(LocationsEvent event) async* {
    yield* event.map(initial: _mapLocationsInitialEvent);
  }

  Stream<LocationsState> _mapLocationsInitialEvent(
      _LocationsInitialEvent event) async* {
    yield LocationsState.loading();
    try {
      _locationList = locationList;
    } catch (e) {
      yield LocationsState.error();
    }
    yield LocationsState.data(
      locationList: _locationList,
    );
  }
}
