import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:forth_flutter/data/network/models/characters_model.dart';
import 'package:forth_flutter/data/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forth_flutter/resources/variables.dart';
import 'package:forth_flutter/data/network/models/character_model.dart';

import '../view_model.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class LocationItemBloc extends Bloc<LocationItemEvent, LocationItemState> {
  LocationItemModel _locationData;
  final _repository = Repository();
  List<Datum> charactersList = List<Datum>();
  //List<CharacterModel> _charactersList;
  int id;

  LocationItemBloc({this.id}) : super(LocationItemState.loading());

  @override
  Stream<LocationItemState> mapEventToState(LocationItemEvent event) async* {
    yield* event.map(initial: _mapLocationItemInitialEvent);
  }

  Stream<LocationItemState> _mapLocationItemInitialEvent(
      _LocationItemInitialEvent event) async* {
    yield LocationItemState.loading();
    try {
      _locationData = locationItemList[id - 1];
    } catch (e) {
      yield LocationItemState.errorLoadItem();
    }
    try {
      charactersList = await _repository.getCharacters();
    } catch (e) {
      yield LocationItemState.errorLoadCharacters();
    }
    yield LocationItemState.data(
      locationData: _locationData,
      charactersList: charactersList,
    );
  }
}
