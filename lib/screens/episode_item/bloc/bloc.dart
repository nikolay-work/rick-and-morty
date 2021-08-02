import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:forth_flutter/data/network/models/characters_model.dart';
import 'package:forth_flutter/data/network/models/episode_model.dart';
import 'package:forth_flutter/data/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forth_flutter/resources/variables.dart';
import 'package:forth_flutter/data/network/models/character_model.dart';
import '../view_model.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class EpisodeItemBloc extends Bloc<EpisodeItemEvent, EpisodeItemState> {
  final _repository = Repository();

  EpisodeData _episodeData;

  List<CharactersDatum> charactersList = List<CharactersDatum>();
  // List<CharacterModel> _charactersList;
  String id;

  EpisodeItemBloc({this.id}) : super(EpisodeItemState.loading());

  @override
  Stream<EpisodeItemState> mapEventToState(EpisodeItemEvent event) async* {
    yield* event.map(initial: _mapEpisodeItemInitialEvent);
  }

  Stream<EpisodeItemState> _mapEpisodeItemInitialEvent(
      _EpisodeItemInitialEvent event) async* {
    yield EpisodeItemState.loading();

    try {
      //_characterData = characterDataList[id - 1];
      _episodeData = await _repository.getEpisode(id);
      // _charactersList = charactersList;
    } on DioError catch (e) {
      print('!!!!!!!!!!!!!!!!!!${e.message}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.error}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.type}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.request}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.response}!!!!!!!!!!!!!!!!!!!');

      yield EpisodeItemState.episodeLoadError();
    }
    // try {
    //   _episodeData = episodesItemList[id - 1];
    // } catch (e) {
    //   yield EpisodeItemState.episodeLoadError();
    // }
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
