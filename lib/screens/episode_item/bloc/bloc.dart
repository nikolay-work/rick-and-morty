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

class EpisodeItemBloc extends Bloc<EpisodeItemEvent, EpisodeItemState> {
  EpisodeItemModel _episodeData;
  final _repository = Repository();
  List<CharactersDatum> charactersList = List<CharactersDatum>();
  // List<CharacterModel> _charactersList;
  int id;

  EpisodeItemBloc({this.id}) : super(EpisodeItemState.loading());

  @override
  Stream<EpisodeItemState> mapEventToState(EpisodeItemEvent event) async* {
    yield* event.map(initial: _mapEpisodeItemInitialEvent);
  }

  Stream<EpisodeItemState> _mapEpisodeItemInitialEvent(
      _EpisodeItemInitialEvent event) async* {
    yield EpisodeItemState.loading();

    try {
      _episodeData = episodesItemList[id - 1];
    } catch (e) {
      yield EpisodeItemState.episodeLoadError();
    }
    try {
      charactersList = await _repository.getCharacters();
    } catch (e) {
      yield EpisodeItemState.charactersLoadError();
    }
    yield EpisodeItemState.data(
      episodeData: _episodeData,
      charactersList: charactersList,
    );
  }
}
