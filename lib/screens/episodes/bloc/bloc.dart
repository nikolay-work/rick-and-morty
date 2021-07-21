import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forth_flutter/data/network/models/episode.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:forth_flutter/resources/variables.dart';

import '../view_model.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  List<SeasonNameModel> _seasonsNameList;
  List<EpisodeModel> _episodesList;
  int _currentSeasonId = 1;

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
      _seasonsNameList = seasonsNameList;
      _episodesList = episodesList;
    } catch (e) {
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
      _episodesList = episodesList;
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
