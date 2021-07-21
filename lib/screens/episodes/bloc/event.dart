part of 'bloc.dart';

@freezed
abstract class EpisodesEvent with _$EpisodesEvent {
  const factory EpisodesEvent.initial() = _EpisodesInitialEvent;
  const factory EpisodesEvent.changeSeason({@required int currentSeasonId}) =
      _EpisodesChangeSeasonEvent;
}
