import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forth_flutter/data/network/models/episode.dart';
import 'package:flutter/foundation.dart';
import 'package:forth_flutter/data/network/models/episodes_model.dart';
import 'package:forth_flutter/data/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forth_flutter/resources/variables.dart';

import '../view_model.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  final _repository = Repository();
  List<EpisodesDatum> _allEpisodesList = List<EpisodesDatum>();
  List<EpisodesDatum> _episodesList = List<EpisodesDatum>();
  //List<SeasonNameModel> _seasonsNameList;
  List<int> _seasonsNameList = List<int>();
  //List<EpisodeModel> _episodesList;
  int _currentSeasonId;

  EpisodesBloc() : super(EpisodesState.loading());

  @override
  Stream<EpisodesState> mapEventToState(EpisodesEvent event) async* {
    yield* event.map(
        initial: _mapEpisodesInitialEvent,
        changeSeason: _mapEpisodesChangeSeasonEvent);
  }

  Stream<EpisodesState> _mapEpisodesInitialEvent(
      _EpisodesInitialEvent event) async* {
    yield EpisodesState.loading();
    try {
      _allEpisodesList = await _repository.getEpisodes();

      for (EpisodesDatum episode in _allEpisodesList) {
        if (!_seasonsNameList.contains(episode.season)) {
          _seasonsNameList.add(episode.season);
        }
      }
      _seasonsNameList.sort();
      _currentSeasonId = _seasonsNameList[0];
      _episodesList.clear();
      for (EpisodesDatum episode in _allEpisodesList) {
        if (episode.season == _currentSeasonId) {
          _episodesList.add(episode);
        }
      }

      //_seasonsNameList = seasonsNameList;
      //_episodesList = episodesList;
    } on DioError catch (e) {
      print('!!!!!!!!!!!!!!!!!!${e.message}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.error}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.type}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.request}!!!!!!!!!!!!!!!!!!!');
      print('!!!!!!!!!!!!!!!!!!${e.response}!!!!!!!!!!!!!!!!!!!');

      yield EpisodesState.error();
    }

    yield EpisodesState.data(
      seasonsNameList: _seasonsNameList,
      episodesList: _episodesList,
      currentSeasonId: _currentSeasonId,
    );
  }

  Stream<EpisodesState> _mapEpisodesChangeSeasonEvent(
      _EpisodesChangeSeasonEvent event) async* {
    _currentSeasonId = event.currentSeasonId; //event.currentSeasonId;
    yield EpisodesState.loading();
    try {
      _episodesList.clear();
      for (EpisodesDatum episode in _allEpisodesList) {
        if (episode.season == _currentSeasonId) {
          _episodesList.add(episode);
        }
      }
    } catch (e) {
      yield EpisodesState.error();
    }

    yield EpisodesState.data(
      seasonsNameList: _seasonsNameList,
      episodesList: _episodesList,
      currentSeasonId: _currentSeasonId,
    );
  }
}
