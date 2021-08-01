part of 'bloc.dart';

@freezed
abstract class LocationItemState with _$LocationItemState {
  const factory LocationItemState.loading() = _LocationItemLoadingState;
  const factory LocationItemState.data(
      {@required LocationItemModel locationData,
      @required List<CharactersDatum> charactersList}) = _LocationItemDataState;
  const factory LocationItemState.errorLoadItem() = _LocationLoadItemErrorState;
  const factory LocationItemState.errorLoadCharacters() =
      _LocationLoadCharactersErrorState;
}
