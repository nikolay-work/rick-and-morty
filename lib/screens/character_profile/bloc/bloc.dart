import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forth_flutter/resources/variables.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../view_model.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class CharacterProfileBloc
    extends Bloc<CharacterProfileEvent, CharacterProfileState> {
  CharacterProfileModel _characterData;
  int id;

  CharacterProfileBloc({this.id}) : super(CharacterProfileState.loading());

  @override
  Stream<CharacterProfileState> mapEventToState(
      CharacterProfileEvent event) async* {
    yield* event.map(initial: _mapCharacterProfileInitialEvent);
  }

  Stream<CharacterProfileState> _mapCharacterProfileInitialEvent(
      _CharacterProfileInitialEvent event) async* {
    yield CharacterProfileState.loading();
    try {
      _characterData = characterDataList[id - 1];
    } catch (e) {
      yield CharacterProfileState.error();
    }
    yield CharacterProfileState.data(
      characterData: _characterData,
    );
  }
}

// CharacterProfileEvent event) async* {
// if (event is CharacterProfileInitialEvent) {
// yield CharacterProfileLoadingState();
// try {
// _characterData = characterDataList[id - 1];
// } catch (e) {
// yield CharacterProfileErrorState();
// }
// yield CharacterProfileDataState(characterData: _characterData);
// }
// }
