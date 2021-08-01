// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocationItemEventTearOff {
  const _$LocationItemEventTearOff();

// ignore: unused_element
  _LocationItemInitialEvent initial() {
    return const _LocationItemInitialEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $LocationItemEvent = _$LocationItemEventTearOff();

/// @nodoc
mixin _$LocationItemEvent {
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
    @required TResult initial(_LocationItemInitialEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LocationItemInitialEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LocationItemEventCopyWith<$Res> {
  factory $LocationItemEventCopyWith(
          LocationItemEvent value, $Res Function(LocationItemEvent) then) =
      _$LocationItemEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationItemEventCopyWithImpl<$Res>
    implements $LocationItemEventCopyWith<$Res> {
  _$LocationItemEventCopyWithImpl(this._value, this._then);

  final LocationItemEvent _value;
  // ignore: unused_field
  final $Res Function(LocationItemEvent) _then;
}

/// @nodoc
abstract class _$LocationItemInitialEventCopyWith<$Res> {
  factory _$LocationItemInitialEventCopyWith(_LocationItemInitialEvent value,
          $Res Function(_LocationItemInitialEvent) then) =
      __$LocationItemInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationItemInitialEventCopyWithImpl<$Res>
    extends _$LocationItemEventCopyWithImpl<$Res>
    implements _$LocationItemInitialEventCopyWith<$Res> {
  __$LocationItemInitialEventCopyWithImpl(_LocationItemInitialEvent _value,
      $Res Function(_LocationItemInitialEvent) _then)
      : super(_value, (v) => _then(v as _LocationItemInitialEvent));

  @override
  _LocationItemInitialEvent get _value =>
      super._value as _LocationItemInitialEvent;
}

/// @nodoc
class _$_LocationItemInitialEvent
    with DiagnosticableTreeMixin
    implements _LocationItemInitialEvent {
  const _$_LocationItemInitialEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationItemEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationItemEvent.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationItemInitialEvent);
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
    @required TResult initial(_LocationItemInitialEvent value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LocationItemInitialEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LocationItemInitialEvent implements LocationItemEvent {
  const factory _LocationItemInitialEvent() = _$_LocationItemInitialEvent;
}

/// @nodoc
class _$LocationItemStateTearOff {
  const _$LocationItemStateTearOff();

// ignore: unused_element
  _LocationItemLoadingState loading() {
    return const _LocationItemLoadingState();
  }

// ignore: unused_element
  _LocationItemDataState data(
      {@required LocationItemModel locationData,
      @required List<CharactersDatum> charactersList}) {
    return _LocationItemDataState(
      locationData: locationData,
      charactersList: charactersList,
    );
  }

// ignore: unused_element
  _LocationLoadItemErrorState errorLoadItem() {
    return const _LocationLoadItemErrorState();
  }

// ignore: unused_element
  _LocationLoadCharactersErrorState errorLoadCharacters() {
    return const _LocationLoadCharactersErrorState();
  }
}

/// @nodoc
// ignore: unused_element
const $LocationItemState = _$LocationItemStateTearOff();

/// @nodoc
mixin _$LocationItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(LocationItemModel locationData,
            List<CharactersDatum> charactersList),
    @required TResult errorLoadItem(),
    @required TResult errorLoadCharacters(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(
        LocationItemModel locationData, List<CharactersDatum> charactersList),
    TResult errorLoadItem(),
    TResult errorLoadCharacters(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_LocationItemLoadingState value),
    @required TResult data(_LocationItemDataState value),
    @required TResult errorLoadItem(_LocationLoadItemErrorState value),
    @required
        TResult errorLoadCharacters(_LocationLoadCharactersErrorState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_LocationItemLoadingState value),
    TResult data(_LocationItemDataState value),
    TResult errorLoadItem(_LocationLoadItemErrorState value),
    TResult errorLoadCharacters(_LocationLoadCharactersErrorState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LocationItemStateCopyWith<$Res> {
  factory $LocationItemStateCopyWith(
          LocationItemState value, $Res Function(LocationItemState) then) =
      _$LocationItemStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationItemStateCopyWithImpl<$Res>
    implements $LocationItemStateCopyWith<$Res> {
  _$LocationItemStateCopyWithImpl(this._value, this._then);

  final LocationItemState _value;
  // ignore: unused_field
  final $Res Function(LocationItemState) _then;
}

/// @nodoc
abstract class _$LocationItemLoadingStateCopyWith<$Res> {
  factory _$LocationItemLoadingStateCopyWith(_LocationItemLoadingState value,
          $Res Function(_LocationItemLoadingState) then) =
      __$LocationItemLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationItemLoadingStateCopyWithImpl<$Res>
    extends _$LocationItemStateCopyWithImpl<$Res>
    implements _$LocationItemLoadingStateCopyWith<$Res> {
  __$LocationItemLoadingStateCopyWithImpl(_LocationItemLoadingState _value,
      $Res Function(_LocationItemLoadingState) _then)
      : super(_value, (v) => _then(v as _LocationItemLoadingState));

  @override
  _LocationItemLoadingState get _value =>
      super._value as _LocationItemLoadingState;
}

/// @nodoc
class _$_LocationItemLoadingState
    with DiagnosticableTreeMixin
    implements _LocationItemLoadingState {
  const _$_LocationItemLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationItemState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationItemState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationItemLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(LocationItemModel locationData,
            List<CharactersDatum> charactersList),
    @required TResult errorLoadItem(),
    @required TResult errorLoadCharacters(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(errorLoadItem != null);
    assert(errorLoadCharacters != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(
        LocationItemModel locationData, List<CharactersDatum> charactersList),
    TResult errorLoadItem(),
    TResult errorLoadCharacters(),
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
    @required TResult loading(_LocationItemLoadingState value),
    @required TResult data(_LocationItemDataState value),
    @required TResult errorLoadItem(_LocationLoadItemErrorState value),
    @required
        TResult errorLoadCharacters(_LocationLoadCharactersErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(errorLoadItem != null);
    assert(errorLoadCharacters != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_LocationItemLoadingState value),
    TResult data(_LocationItemDataState value),
    TResult errorLoadItem(_LocationLoadItemErrorState value),
    TResult errorLoadCharacters(_LocationLoadCharactersErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LocationItemLoadingState implements LocationItemState {
  const factory _LocationItemLoadingState() = _$_LocationItemLoadingState;
}

/// @nodoc
abstract class _$LocationItemDataStateCopyWith<$Res> {
  factory _$LocationItemDataStateCopyWith(_LocationItemDataState value,
          $Res Function(_LocationItemDataState) then) =
      __$LocationItemDataStateCopyWithImpl<$Res>;
  $Res call(
      {LocationItemModel locationData, List<CharactersDatum> charactersList});
}

/// @nodoc
class __$LocationItemDataStateCopyWithImpl<$Res>
    extends _$LocationItemStateCopyWithImpl<$Res>
    implements _$LocationItemDataStateCopyWith<$Res> {
  __$LocationItemDataStateCopyWithImpl(_LocationItemDataState _value,
      $Res Function(_LocationItemDataState) _then)
      : super(_value, (v) => _then(v as _LocationItemDataState));

  @override
  _LocationItemDataState get _value => super._value as _LocationItemDataState;

  @override
  $Res call({
    Object locationData = freezed,
    Object charactersList = freezed,
  }) {
    return _then(_LocationItemDataState(
      locationData: locationData == freezed
          ? _value.locationData
          : locationData as LocationItemModel,
      charactersList: charactersList == freezed
          ? _value.charactersList
          : charactersList as List<CharactersDatum>,
    ));
  }
}

/// @nodoc
class _$_LocationItemDataState
    with DiagnosticableTreeMixin
    implements _LocationItemDataState {
  const _$_LocationItemDataState(
      {@required this.locationData, @required this.charactersList})
      : assert(locationData != null),
        assert(charactersList != null);

  @override
  final LocationItemModel locationData;
  @override
  final List<CharactersDatum> charactersList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationItemState.data(locationData: $locationData, charactersList: $charactersList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationItemState.data'))
      ..add(DiagnosticsProperty('locationData', locationData))
      ..add(DiagnosticsProperty('charactersList', charactersList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationItemDataState &&
            (identical(other.locationData, locationData) ||
                const DeepCollectionEquality()
                    .equals(other.locationData, locationData)) &&
            (identical(other.charactersList, charactersList) ||
                const DeepCollectionEquality()
                    .equals(other.charactersList, charactersList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationData) ^
      const DeepCollectionEquality().hash(charactersList);

  @JsonKey(ignore: true)
  @override
  _$LocationItemDataStateCopyWith<_LocationItemDataState> get copyWith =>
      __$LocationItemDataStateCopyWithImpl<_LocationItemDataState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(LocationItemModel locationData,
            List<CharactersDatum> charactersList),
    @required TResult errorLoadItem(),
    @required TResult errorLoadCharacters(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(errorLoadItem != null);
    assert(errorLoadCharacters != null);
    return data(locationData, charactersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(
        LocationItemModel locationData, List<CharactersDatum> charactersList),
    TResult errorLoadItem(),
    TResult errorLoadCharacters(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(locationData, charactersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_LocationItemLoadingState value),
    @required TResult data(_LocationItemDataState value),
    @required TResult errorLoadItem(_LocationLoadItemErrorState value),
    @required
        TResult errorLoadCharacters(_LocationLoadCharactersErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(errorLoadItem != null);
    assert(errorLoadCharacters != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_LocationItemLoadingState value),
    TResult data(_LocationItemDataState value),
    TResult errorLoadItem(_LocationLoadItemErrorState value),
    TResult errorLoadCharacters(_LocationLoadCharactersErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _LocationItemDataState implements LocationItemState {
  const factory _LocationItemDataState(
          {@required LocationItemModel locationData,
          @required List<CharactersDatum> charactersList}) =
      _$_LocationItemDataState;

  LocationItemModel get locationData;
  List<CharactersDatum> get charactersList;
  @JsonKey(ignore: true)
  _$LocationItemDataStateCopyWith<_LocationItemDataState> get copyWith;
}

/// @nodoc
abstract class _$LocationLoadItemErrorStateCopyWith<$Res> {
  factory _$LocationLoadItemErrorStateCopyWith(
          _LocationLoadItemErrorState value,
          $Res Function(_LocationLoadItemErrorState) then) =
      __$LocationLoadItemErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationLoadItemErrorStateCopyWithImpl<$Res>
    extends _$LocationItemStateCopyWithImpl<$Res>
    implements _$LocationLoadItemErrorStateCopyWith<$Res> {
  __$LocationLoadItemErrorStateCopyWithImpl(_LocationLoadItemErrorState _value,
      $Res Function(_LocationLoadItemErrorState) _then)
      : super(_value, (v) => _then(v as _LocationLoadItemErrorState));

  @override
  _LocationLoadItemErrorState get _value =>
      super._value as _LocationLoadItemErrorState;
}

/// @nodoc
class _$_LocationLoadItemErrorState
    with DiagnosticableTreeMixin
    implements _LocationLoadItemErrorState {
  const _$_LocationLoadItemErrorState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationItemState.errorLoadItem()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationItemState.errorLoadItem'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationLoadItemErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(LocationItemModel locationData,
            List<CharactersDatum> charactersList),
    @required TResult errorLoadItem(),
    @required TResult errorLoadCharacters(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(errorLoadItem != null);
    assert(errorLoadCharacters != null);
    return errorLoadItem();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(
        LocationItemModel locationData, List<CharactersDatum> charactersList),
    TResult errorLoadItem(),
    TResult errorLoadCharacters(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (errorLoadItem != null) {
      return errorLoadItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_LocationItemLoadingState value),
    @required TResult data(_LocationItemDataState value),
    @required TResult errorLoadItem(_LocationLoadItemErrorState value),
    @required
        TResult errorLoadCharacters(_LocationLoadCharactersErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(errorLoadItem != null);
    assert(errorLoadCharacters != null);
    return errorLoadItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_LocationItemLoadingState value),
    TResult data(_LocationItemDataState value),
    TResult errorLoadItem(_LocationLoadItemErrorState value),
    TResult errorLoadCharacters(_LocationLoadCharactersErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (errorLoadItem != null) {
      return errorLoadItem(this);
    }
    return orElse();
  }
}

abstract class _LocationLoadItemErrorState implements LocationItemState {
  const factory _LocationLoadItemErrorState() = _$_LocationLoadItemErrorState;
}

/// @nodoc
abstract class _$LocationLoadCharactersErrorStateCopyWith<$Res> {
  factory _$LocationLoadCharactersErrorStateCopyWith(
          _LocationLoadCharactersErrorState value,
          $Res Function(_LocationLoadCharactersErrorState) then) =
      __$LocationLoadCharactersErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationLoadCharactersErrorStateCopyWithImpl<$Res>
    extends _$LocationItemStateCopyWithImpl<$Res>
    implements _$LocationLoadCharactersErrorStateCopyWith<$Res> {
  __$LocationLoadCharactersErrorStateCopyWithImpl(
      _LocationLoadCharactersErrorState _value,
      $Res Function(_LocationLoadCharactersErrorState) _then)
      : super(_value, (v) => _then(v as _LocationLoadCharactersErrorState));

  @override
  _LocationLoadCharactersErrorState get _value =>
      super._value as _LocationLoadCharactersErrorState;
}

/// @nodoc
class _$_LocationLoadCharactersErrorState
    with DiagnosticableTreeMixin
    implements _LocationLoadCharactersErrorState {
  const _$_LocationLoadCharactersErrorState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationItemState.errorLoadCharacters()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'LocationItemState.errorLoadCharacters'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationLoadCharactersErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required
        TResult data(LocationItemModel locationData,
            List<CharactersDatum> charactersList),
    @required TResult errorLoadItem(),
    @required TResult errorLoadCharacters(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(errorLoadItem != null);
    assert(errorLoadCharacters != null);
    return errorLoadCharacters();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(
        LocationItemModel locationData, List<CharactersDatum> charactersList),
    TResult errorLoadItem(),
    TResult errorLoadCharacters(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (errorLoadCharacters != null) {
      return errorLoadCharacters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_LocationItemLoadingState value),
    @required TResult data(_LocationItemDataState value),
    @required TResult errorLoadItem(_LocationLoadItemErrorState value),
    @required
        TResult errorLoadCharacters(_LocationLoadCharactersErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(errorLoadItem != null);
    assert(errorLoadCharacters != null);
    return errorLoadCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_LocationItemLoadingState value),
    TResult data(_LocationItemDataState value),
    TResult errorLoadItem(_LocationLoadItemErrorState value),
    TResult errorLoadCharacters(_LocationLoadCharactersErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (errorLoadCharacters != null) {
      return errorLoadCharacters(this);
    }
    return orElse();
  }
}

abstract class _LocationLoadCharactersErrorState implements LocationItemState {
  const factory _LocationLoadCharactersErrorState() =
      _$_LocationLoadCharactersErrorState;
}
