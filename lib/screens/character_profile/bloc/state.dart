part of 'bloc.dart';

@freezed
abstract class CharacterProfileState with _$CharacterProfileState {
  const factory CharacterProfileState.loading() = _CharacterProfileLoadingState;
  const factory CharacterProfileState.data({
    @required CharacterData characterData,
  }) = _CharacterProfileDataState;
  const factory CharacterProfileState.error() = _CharacterProfileErrorState;
}
