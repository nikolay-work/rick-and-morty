part of 'bloc.dart';

@freezed
abstract class EpisodeItemEvent with _$EpisodeItemEvent {
  const factory EpisodeItemEvent.initial() = _EpisodeItemInitialEvent;
}
