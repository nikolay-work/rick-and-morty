part of 'bloc.dart';

@freezed
abstract class LocationsState with _$LocationsState {
  const factory LocationsState.loading() = _LocationsLoadingState;
  const factory LocationsState.data({
    @required List<LocationModel> locationList,
  }) = _LocationsDataState;
  const factory LocationsState.error() = _LocationsErrorState;
}

//class LocationsViewState extends LocationsState {}

//class LocationsLoadingState extends LocationsState {}

// class LocationsDataState extends LocationsState {
//   List<LocationModel> locationList;
//
//   LocationsDataState({@required this.locationList});
// }
//
// class LocationsErrorState extends LocationsState {}
