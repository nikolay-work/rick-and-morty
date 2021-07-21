part of 'bloc.dart';

@freezed
abstract class CharactersState with _$CharactersState {
  const factory CharactersState.view() = _CharactersViewState;
  const factory CharactersState.loading() = _CharactersLoadingState;
  const factory CharactersState.data(
      {List<Datum> charactersList, bool isGrid}) = _CharactersDataState;
  const factory CharactersState.error() = _CharactersErrorState;
}
