part of 'bloc.dart';

@freezed
abstract class LocationsEvent with _$LocationsEvent {
  const factory LocationsEvent.initial() = _LocationsInitialEvent;
  const factory LocationsEvent.search({@required String searchString}) =
      _LocationsSearchEvent;
}
