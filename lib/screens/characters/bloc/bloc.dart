import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forth_flutter/data/network/models/characters_model.dart';
import 'package:forth_flutter/data/repository.dart';
import 'package:forth_flutter/resources/variables.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/network/models/character_model.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final _repository = Repository();
  List<Datum> charactersList = List<Datum>();
  // List<CharacterModel> _charactersList;
  bool _isGrid = false;

  CharactersBloc() : super(CharactersState.loading());

  @override
  Stream<CharactersState> mapEventToState(CharactersEvent event) async* {
    yield* event.map(
        change: _mapCharactersChangeViewEvent,
        initial: _mapCharactersInitialEvent);
  }

  Stream<CharactersState> _mapCharactersInitialEvent(
      _CharactersInitialEvent event) async* {
    yield CharactersState.loading();
    try {
      charactersList = await _repository.getCharacters();
      // _charactersList = charactersList;
    } on DioError catch (e) {
      print('!!!!!!!!!!!!!!!!!!${e.message}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.error}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.type}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.request}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.response}!!!!!!!!!!!!!!!!!!!');

      yield CharactersState.error();
    }
    yield CharactersState.data(charactersList: charactersList, isGrid: _isGrid);
  }

  Stream<CharactersState> _mapCharactersChangeViewEvent(
      _CharactersChangeViewEvent event) async* {
    _isGrid = !_isGrid;
    yield CharactersState.data(charactersList: charactersList, isGrid: _isGrid);
  }
}

// if (event is CharactersInitialEvent) {
// yield CharactersLoadingState();
// try {
// _charactersList = charactersList;
// } catch (e) {
// yield CharactersErrorState();
// }
// yield CharactersDataState(
// charactersList: _charactersList, isGrid: _isGrid);
// } else if (event is CharactersChangeViewEvent) {
// _isGrid = !_isGrid;
// yield CharactersDataState(
// charactersList: _charactersList, isGrid: _isGrid);
// }
