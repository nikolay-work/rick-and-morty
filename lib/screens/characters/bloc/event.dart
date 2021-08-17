part of 'bloc.dart';

@freezed
abstract class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.change() = _CharactersChangeViewEvent;
  const factory CharactersEvent.initial() = _CharactersInitialEvent;
  const factory CharactersEvent.search({@required String searchString}) =
      _CharactersSearchEvent;
}
