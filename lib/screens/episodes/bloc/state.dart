part of 'bloc.dart';

@freezed
abstract class EpisodesState with _$EpisodesState {
  const factory EpisodesState.loading() = _EpisodesLoadingState;
  const factory EpisodesState.data(
      {@required List<int> seasonsNameList,
      @required List<EpisodesDatum> episodesList,
      @required int currentSeasonId}) = _EpisodesDataState;
  const factory EpisodesState.error() = _EpisodesErrorState;
}
