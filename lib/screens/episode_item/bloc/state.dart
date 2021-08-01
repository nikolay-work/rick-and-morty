part of 'bloc.dart';

@freezed
abstract class EpisodeItemState with _$EpisodeItemState {
  const factory EpisodeItemState.loading() = _EpisodeItemLoadingState;
  const factory EpisodeItemState.data(
      {@required EpisodeItemModel episodeData,
      @required List<CharactersDatum> charactersList}) = _EpisodeItemDataState;
  const factory EpisodeItemState.episodeLoadError() = _EpisodeLoadErrorState;
  const factory EpisodeItemState.charactersLoadError() =
      _CharactersLoadErrorState;
}
