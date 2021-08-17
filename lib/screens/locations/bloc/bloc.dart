import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forth_flutter/data/network/models/locations_model.dart';
import 'package:forth_flutter/data/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forth_flutter/resources/variables.dart';
import 'package:flutter/foundation.dart';

import '../view_model.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  final _repository = Repository();
  //List<LocationModel> _locationList;
  List<LocationsDatum> _locationList = List<LocationsDatum>();
  List<LocationsDatum> _locationSearchList = List<LocationsDatum>();

  LocationsBloc() : super(LocationsState.loading());

  @override
  Stream<LocationsState> mapEventToState(LocationsEvent event) async* {
    yield* event.map(
        initial: _mapLocationsInitialEvent, search: _mapLocationsSearchEvent);
  }

  Stream<LocationsState> _mapLocationsInitialEvent(
      _LocationsInitialEvent event) async* {
    yield LocationsState.loading();
    try {
      _locationList = await _repository.getLocations();
    } on DioError catch (e) {
      print('!!!!!!!!!!!!!!!!!!${e.message}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.error}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.type}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.request}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.response}!!!!!!!!!!!!!!!!!!!');

      yield LocationsState.error();
    }
    // try {
    //   _locationList = locationList;
    // } catch (e) {
    //   yield LocationsState.error();
    // }
    yield LocationsState.data(
      locationList: _locationList,
    );
  }

  Stream<LocationsState> _mapLocationsSearchEvent(
      _LocationsSearchEvent event) async* {
    yield LocationsState.loading();
    try {
      //print('fdrhh');
      _locationSearchList =
          await _repository.getSearchLocations(event.searchString);
      // _charactersList = charactersList;
    } on DioError catch (e) {
      print('!!!!!!!!!!!!!!!!!!${e.message}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.error}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.type}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.request}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.response}!!!!!!!!!!!!!!!!!!!');

      yield LocationsState.error();
    }
    yield LocationsState.data(
      locationList: _locationSearchList,
    );
  }
}
