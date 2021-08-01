// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EpisodeItemEventTearOff {
  const _$EpisodeItemEventTearOff();

// ignore: unused_element
  _EpisodeItemInitialEvent initial() {
    return const _EpisodeItemInitialEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $EpisodeItemEvent = _$EpisodeItemEventTearOff();

/// @nodoc
mixin _$EpisodeItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_EpisodeItemInitialEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_EpisodeItemInitialEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EpisodeItemEventCopyWith<$Res> {
  factory $EpisodeItemEventCopyWith(
          EpisodeItemEvent value, $Res Function(EpisodeItemEvent) then) =
      _$EpisodeItemEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodeItemEventCopyWithImpl<$Res>
    implements $EpisodeItemEventCopyWith<$Res> {
  _$EpisodeItemEventCopyWithImpl(this._value, this._then);

  final EpisodeItemEvent _value;
  // ignore: unused_field
  final $Res Function(EpisodeItemEvent) _then;
}

/// @nodoc
abstract class _$EpisodeItemInitialEventCopyWith<$Res> {
  factory _$EpisodeItemInitialEventCopyWith(_EpisodeItemInitialEvent value,
          $Res Function(_EpisodeItemInitialEvent) then) =
      __$EpisodeItemInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$EpisodeItemInitialEventCopyWithImpl<$Res>
    extends _$EpisodeItemEventCopyWithImpl<$Res>
    implements _$EpisodeItemInitialEventCopyWith<$Res> {
  __$EpisodeItemInitialEventCopyWithImpl(_EpisodeItemInitialEvent _value,
      $Res Function(_EpisodeItemInitialEvent) _then)
      : super(_value, (v) => _then(v as _EpisodeItemInitialEvent));

  @override
  _EpisodeItemInitialEvent get _value =>
      super._value as _EpisodeItemInitialEvent;
}

/// @nodoc
class _$_EpisodeItemInitialEvent
    with DiagnosticableTreeMixin
    implements _EpisodeItemInitialEvent {
  const _$_EpisodeItemInitialEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodeItemEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EpisodeItemEvent.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EpisodeItemInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
  }) {
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_EpisodeItemInitialEvent value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_EpisodeItemInitialEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _EpisodeItemInitialEvent implements EpisodeItemEvent {
  const factory _EpisodeItemInitialEvent() = _$_EpisodeItemInitialEvent;
}

/// @nodoc
class _$EpisodeItemStateTearOff {
  const _$EpisodeItemStateTearOff();

// ignore: unused_element
  _EpisodeItemLoadingState loading() {
    return const _EpisodeItemLoadingState();
  }

// ignore: unused_element
  _EpisodeItemDataState data(
      {@required EpisodeItemModel episodeData,
      @required List<CharactersDatum> charactersList}) {
    return _EpisodeItemDataState(
      episodeData: episodeData,
      charactersList: charactersList,
    );
  }

// ignore: unused_element
  _EpisodeLoadErrorState episodeLoadError() {
    return const _EpisodeLoadErrorState();
  }

// ignore: unused_element
  _CharactersLoadErrorState charactersLoadError() {
    return const _CharactersLoadErrorState();
  }
}

/// @nodoc
// ignore: unused_element
const $EpisodeItemState = _$EpisodeItemStateTearOff();

/// @nodoc
mixin _$EpisodeItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(
            EpisodeItemModel episodeData, List<CharactersDatum> charactersList),
    @required TResult episodeLoadError(),
    @required TResult charactersLoadError(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(
        EpisodeItemModel episodeData, List<CharactersDatum> charactersList),
    TResult episodeLoadError(),
    TResult charactersLoadError(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_EpisodeItemLoadingState value),
    @required TResult data(_EpisodeItemDataState value),
    @required TResult episodeLoadError(_EpisodeLoadErrorState value),
    @required TResult charactersLoadError(_CharactersLoadErrorState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EpisodeItemLoadingState value),
    TResult data(_EpisodeItemDataState value),
    TResult episodeLoadError(_EpisodeLoadErrorState value),
    TResult charactersLoadError(_CharactersLoadErrorState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EpisodeItemStateCopyWith<$Res> {
  factory $EpisodeItemStateCopyWith(
          EpisodeItemState value, $Res Function(EpisodeItemState) then) =
      _$EpisodeItemStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodeItemStateCopyWithImpl<$Res>
    implements $EpisodeItemStateCopyWith<$Res> {
  _$EpisodeItemStateCopyWithImpl(this._value, this._then);

  final EpisodeItemState _value;
  // ignore: unused_field
  final $Res Function(EpisodeItemState) _then;
}

/// @nodoc
abstract class _$EpisodeItemLoadingStateCopyWith<$Res> {
  factory _$EpisodeItemLoadingStateCopyWith(_EpisodeItemLoadingState value,
          $Res Function(_EpisodeItemLoadingState) then) =
      __$EpisodeItemLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$EpisodeItemLoadingStateCopyWithImpl<$Res>
    extends _$EpisodeItemStateCopyWithImpl<$Res>
    implements _$EpisodeItemLoadingStateCopyWith<$Res> {
  __$EpisodeItemLoadingStateCopyWithImpl(_EpisodeItemLoadingState _value,
      $Res Function(_EpisodeItemLoadingState) _then)
      : super(_value, (v) => _then(v as _EpisodeItemLoadingState));

  @override
  _EpisodeItemLoadingState get _value =>
      super._value as _EpisodeItemLoadingState;
}

/// @nodoc
class _$_EpisodeItemLoadingState
    with DiagnosticableTreeMixin
    implements _EpisodeItemLoadingState {
  const _$_EpisodeItemLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodeItemState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EpisodeItemState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EpisodeItemLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(
            EpisodeItemModel episodeData, List<CharactersDatum> charactersList),
    @required TResult episodeLoadError(),
    @required TResult charactersLoadError(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(episodeLoadError != null);
    assert(charactersLoadError != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(
        EpisodeItemModel episodeData, List<CharactersDatum> charactersList),
    TResult episodeLoadError(),
    TResult charactersLoadError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_EpisodeItemLoadingState value),
    @required TResult data(_EpisodeItemDataState value),
    @required TResult episodeLoadError(_EpisodeLoadErrorState value),
    @required TResult charactersLoadError(_CharactersLoadErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(episodeLoadError != null);
    assert(charactersLoadError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EpisodeItemLoadingState value),
    TResult data(_EpisodeItemDataState value),
    TResult episodeLoadError(_EpisodeLoadErrorState value),
    TResult charactersLoadError(_CharactersLoadErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _EpisodeItemLoadingState implements EpisodeItemState {
  const factory _EpisodeItemLoadingState() = _$_EpisodeItemLoadingState;
}

/// @nodoc
abstract class _$EpisodeItemDataStateCopyWith<$Res> {
  factory _$EpisodeItemDataStateCopyWith(_EpisodeItemDataState value,
          $Res Function(_EpisodeItemDataState) then) =
      __$EpisodeItemDataStateCopyWithImpl<$Res>;
  $Res call(
      {EpisodeItemModel episodeData, List<CharactersDatum> charactersList});
}

/// @nodoc
class __$EpisodeItemDataStateCopyWithImpl<$Res>
    extends _$EpisodeItemStateCopyWithImpl<$Res>
    implements _$EpisodeItemDataStateCopyWith<$Res> {
  __$EpisodeItemDataStateCopyWithImpl(
      _EpisodeItemDataState _value, $Res Function(_EpisodeItemDataState) _then)
      : super(_value, (v) => _then(v as _EpisodeItemDataState));

  @override
  _EpisodeItemDataState get _value => super._value as _EpisodeItemDataState;

  @override
  $Res call({
    Object episodeData = freezed,
    Object charactersList = freezed,
  }) {
    return _then(_EpisodeItemDataState(
      episodeData: episodeData == freezed
          ? _value.episodeData
          : episodeData as EpisodeItemModel,
      charactersList: charactersList == freezed
          ? _value.charactersList
          : charactersList as List<CharactersDatum>,
    ));
  }
}

/// @nodoc
class _$_EpisodeItemDataState
    with DiagnosticableTreeMixin
    implements _EpisodeItemDataState {
  const _$_EpisodeItemDataState(
      {@required this.episodeData, @required this.charactersList})
      : assert(episodeData != null),
        assert(charactersList != null);

  @override
  final EpisodeItemModel episodeData;
  @override
  final List<CharactersDatum> charactersList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodeItemState.data(episodeData: $episodeData, charactersList: $charactersList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodeItemState.data'))
      ..add(DiagnosticsProperty('episodeData', episodeData))
      ..add(DiagnosticsProperty('charactersList', charactersList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EpisodeItemDataState &&
            (identical(other.episodeData, episodeData) ||
                const DeepCollectionEquality()
                    .equals(other.episodeData, episodeData)) &&
            (identical(other.charactersList, charactersList) ||
                const DeepCollectionEquality()
                    .equals(other.charactersList, charactersList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(episodeData) ^
      const DeepCollectionEquality().hash(charactersList);

  @JsonKey(ignore: true)
  @override
  _$EpisodeItemDataStateCopyWith<_EpisodeItemDataState> get copyWith =>
      __$EpisodeItemDataStateCopyWithImpl<_EpisodeItemDataState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(
            EpisodeItemModel episodeData, List<CharactersDatum> charactersList),
    @required TResult episodeLoadError(),
    @required TResult charactersLoadError(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(episodeLoadError != null);
    assert(charactersLoadError != null);
    return data(episodeData, charactersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(
        EpisodeItemModel episodeData, List<CharactersDatum> charactersList),
    TResult episodeLoadError(),
    TResult charactersLoadError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(episodeData, charactersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_EpisodeItemLoadingState value),
    @required TResult data(_EpisodeItemDataState value),
    @required TResult episodeLoadError(_EpisodeLoadErrorState value),
    @required TResult charactersLoadError(_CharactersLoadErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(episodeLoadError != null);
    assert(charactersLoadError != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EpisodeItemLoadingState value),
    TResult data(_EpisodeItemDataState value),
    TResult episodeLoadError(_EpisodeLoadErrorState value),
    TResult charactersLoadError(_CharactersLoadErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _EpisodeItemDataState implements EpisodeItemState {
  const factory _EpisodeItemDataState(
          {@required EpisodeItemModel episodeData,
          @required List<CharactersDatum> charactersList}) =
      _$_EpisodeItemDataState;

  EpisodeItemModel get episodeData;
  List<CharactersDatum> get charactersList;
  @JsonKey(ignore: true)
  _$EpisodeItemDataStateCopyWith<_EpisodeItemDataState> get copyWith;
}

/// @nodoc
abstract class _$EpisodeLoadErrorStateCopyWith<$Res> {
  factory _$EpisodeLoadErrorStateCopyWith(_EpisodeLoadErrorState value,
          $Res Function(_EpisodeLoadErrorState) then) =
      __$EpisodeLoadErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$EpisodeLoadErrorStateCopyWithImpl<$Res>
    extends _$EpisodeItemStateCopyWithImpl<$Res>
    implements _$EpisodeLoadErrorStateCopyWith<$Res> {
  __$EpisodeLoadErrorStateCopyWithImpl(_EpisodeLoadErrorState _value,
      $Res Function(_EpisodeLoadErrorState) _then)
      : super(_value, (v) => _then(v as _EpisodeLoadErrorState));

  @override
  _EpisodeLoadErrorState get _value => super._value as _EpisodeLoadErrorState;
}

/// @nodoc
class _$_EpisodeLoadErrorState
    with DiagnosticableTreeMixin
    implements _EpisodeLoadErrorState {
  const _$_EpisodeLoadErrorState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodeItemState.episodeLoadError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodeItemState.episodeLoadError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EpisodeLoadErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(
            EpisodeItemModel episodeData, List<CharactersDatum> charactersList),
    @required TResult episodeLoadError(),
    @required TResult charactersLoadError(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(episodeLoadError != null);
    assert(charactersLoadError != null);
    return episodeLoadError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(
        EpisodeItemModel episodeData, List<CharactersDatum> charactersList),
    TResult episodeLoadError(),
    TResult charactersLoadError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (episodeLoadError != null) {
      return episodeLoadError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_EpisodeItemLoadingState value),
    @required TResult data(_EpisodeItemDataState value),
    @required TResult episodeLoadError(_EpisodeLoadErrorState value),
    @required TResult charactersLoadError(_CharactersLoadErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(episodeLoadError != null);
    assert(charactersLoadError != null);
    return episodeLoadError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EpisodeItemLoadingState value),
    TResult data(_EpisodeItemDataState value),
    TResult episodeLoadError(_EpisodeLoadErrorState value),
    TResult charactersLoadError(_CharactersLoadErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (episodeLoadError != null) {
      return episodeLoadError(this);
    }
    return orElse();
  }
}

abstract class _EpisodeLoadErrorState implements EpisodeItemState {
  const factory _EpisodeLoadErrorState() = _$_EpisodeLoadErrorState;
}

/// @nodoc
abstract class _$CharactersLoadErrorStateCopyWith<$Res> {
  factory _$CharactersLoadErrorStateCopyWith(_CharactersLoadErrorState value,
          $Res Function(_CharactersLoadErrorState) then) =
      __$CharactersLoadErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CharactersLoadErrorStateCopyWithImpl<$Res>
    extends _$EpisodeItemStateCopyWithImpl<$Res>
    implements _$CharactersLoadErrorStateCopyWith<$Res> {
  __$CharactersLoadErrorStateCopyWithImpl(_CharactersLoadErrorState _value,
      $Res Function(_CharactersLoadErrorState) _then)
      : super(_value, (v) => _then(v as _CharactersLoadErrorState));

  @override
  _CharactersLoadErrorState get _value =>
      super._value as _CharactersLoadErrorState;
}

/// @nodoc
class _$_CharactersLoadErrorState
    with DiagnosticableTreeMixin
    implements _CharactersLoadErrorState {
  const _$_CharactersLoadErrorState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodeItemState.charactersLoadError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'EpisodeItemState.charactersLoadError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CharactersLoadErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(
            EpisodeItemModel episodeData, List<CharactersDatum> charactersList),
    @required TResult episodeLoadError(),
    @required TResult charactersLoadError(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(episodeLoadError != null);
    assert(charactersLoadError != null);
    return charactersLoadError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(
        EpisodeItemModel episodeData, List<CharactersDatum> charactersList),
    TResult episodeLoadError(),
    TResult charactersLoadError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (charactersLoadError != null) {
      return charactersLoadError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_EpisodeItemLoadingState value),
    @required TResult data(_EpisodeItemDataState value),
    @required TResult episodeLoadError(_EpisodeLoadErrorState value),
    @required TResult charactersLoadError(_CharactersLoadErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(episodeLoadError != null);
    assert(charactersLoadError != null);
    return charactersLoadError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EpisodeItemLoadingState value),
    TResult data(_EpisodeItemDataState value),
    TResult episodeLoadError(_EpisodeLoadErrorState value),
    TResult charactersLoadError(_CharactersLoadErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (charactersLoadError != null) {
      return charactersLoadError(this);
    }
    return orElse();
  }
}

abstract class _CharactersLoadErrorState implements EpisodeItemState {
  const factory _CharactersLoadErrorState() = _$_CharactersLoadErrorState;
}
