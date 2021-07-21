part of 'bloc.dart';

@freezed
abstract class CharacterProfileEvent with _$CharacterProfileEvent {
  const factory CharacterProfileEvent.initial() = _CharacterProfileInitialEvent;
}
