part of 'bloc.dart';

@freezed
abstract class LocationItemEvent with _$LocationItemEvent {
  const factory LocationItemEvent.initial() = _LocationItemInitialEvent;
}
