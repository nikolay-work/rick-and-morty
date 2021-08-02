// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocationsEventTearOff {
  const _$LocationsEventTearOff();

// ignore: unused_element
  _LocationsInitialEvent initial() {
    return const _LocationsInitialEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $LocationsEvent = _$LocationsEventTearOff();

/// @nodoc
mixin _$LocationsEvent {
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
    @required TResult initial(_LocationsInitialEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LocationsInitialEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LocationsEventCopyWith<$Res> {
  factory $LocationsEventCopyWith(
          LocationsEvent value, $Res Function(LocationsEvent) then) =
      _$LocationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsEventCopyWithImpl<$Res>
    implements $LocationsEventCopyWith<$Res> {
  _$LocationsEventCopyWithImpl(this._value, this._then);

  final LocationsEvent _value;
  // ignore: unused_field
  final $Res Function(LocationsEvent) _then;
}

/// @nodoc
abstract class _$LocationsInitialEventCopyWith<$Res> {
  factory _$LocationsInitialEventCopyWith(_LocationsInitialEvent value,
          $Res Function(_LocationsInitialEvent) then) =
      __$LocationsInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationsInitialEventCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res>
    implements _$LocationsInitialEventCopyWith<$Res> {
  __$LocationsInitialEventCopyWithImpl(_LocationsInitialEvent _value,
      $Res Function(_LocationsInitialEvent) _then)
      : super(_value, (v) => _then(v as _LocationsInitialEvent));

  @override
  _LocationsInitialEvent get _value => super._value as _LocationsInitialEvent;
}

/// @nodoc
class _$_LocationsInitialEvent
    with DiagnosticableTreeMixin
    implements _LocationsInitialEvent {
  const _$_LocationsInitialEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationsEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationsEvent.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationsInitialEvent);
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
    @required TResult initial(_LocationsInitialEvent value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LocationsInitialEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LocationsInitialEvent implements LocationsEvent {
  const factory _LocationsInitialEvent() = _$_LocationsInitialEvent;
}

/// @nodoc
class _$LocationsStateTearOff {
  const _$LocationsStateTearOff();

// ignore: unused_element
  _LocationsLoadingState loading() {
    return const _LocationsLoadingState();
  }

// ignore: unused_element
  _LocationsDataState data({@required List<LocationsDatum> locationList}) {
    return _LocationsDataState(
      locationList: locationList,
    );
  }

// ignore: unused_element
  _LocationsErrorState error() {
    return const _LocationsErrorState();
  }
}

/// @nodoc
// ignore: unused_element
const $LocationsState = _$LocationsStateTearOff();

/// @nodoc
mixin _$LocationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult data(List<LocationsDatum> locationList),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(List<LocationsDatum> locationList),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_LocationsLoadingState value),
    @required TResult data(_LocationsDataState value),
    @required TResult error(_LocationsErrorState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_LocationsLoadingState value),
    TResult data(_LocationsDataState value),
    TResult error(_LocationsErrorState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LocationsStateCopyWith<$Res> {
  factory $LocationsStateCopyWith(
          LocationsState value, $Res Function(LocationsState) then) =
      _$LocationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsStateCopyWithImpl<$Res>
    implements $LocationsStateCopyWith<$Res> {
  _$LocationsStateCopyWithImpl(this._value, this._then);

  final LocationsState _value;
  // ignore: unused_field
  final $Res Function(LocationsState) _then;
}

/// @nodoc
abstract class _$LocationsLoadingStateCopyWith<$Res> {
  factory _$LocationsLoadingStateCopyWith(_LocationsLoadingState value,
          $Res Function(_LocationsLoadingState) then) =
      __$LocationsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationsLoadingStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$LocationsLoadingStateCopyWith<$Res> {
  __$LocationsLoadingStateCopyWithImpl(_LocationsLoadingState _value,
      $Res Function(_LocationsLoadingState) _then)
      : super(_value, (v) => _then(v as _LocationsLoadingState));

  @override
  _LocationsLoadingState get _value => super._value as _LocationsLoadingState;
}

/// @nodoc
class _$_LocationsLoadingState
    with DiagnosticableTreeMixin
    implements _LocationsLoadingState {
  const _$_LocationsLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationsState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult data(List<LocationsDatum> locationList),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(List<LocationsDatum> locationList),
    TResult error(),
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
    @required TResult loading(_LocationsLoadingState value),
    @required TResult data(_LocationsDataState value),
    @required TResult error(_LocationsErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_LocationsLoadingState value),
    TResult data(_LocationsDataState value),
    TResult error(_LocationsErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LocationsLoadingState implements LocationsState {
  const factory _LocationsLoadingState() = _$_LocationsLoadingState;
}

/// @nodoc
abstract class _$LocationsDataStateCopyWith<$Res> {
  factory _$LocationsDataStateCopyWith(
          _LocationsDataState value, $Res Function(_LocationsDataState) then) =
      __$LocationsDataStateCopyWithImpl<$Res>;
  $Res call({List<LocationsDatum> locationList});
}

/// @nodoc
class __$LocationsDataStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$LocationsDataStateCopyWith<$Res> {
  __$LocationsDataStateCopyWithImpl(
      _LocationsDataState _value, $Res Function(_LocationsDataState) _then)
      : super(_value, (v) => _then(v as _LocationsDataState));

  @override
  _LocationsDataState get _value => super._value as _LocationsDataState;

  @override
  $Res call({
    Object locationList = freezed,
  }) {
    return _then(_LocationsDataState(
      locationList: locationList == freezed
          ? _value.locationList
          : locationList as List<LocationsDatum>,
    ));
  }
}

/// @nodoc
class _$_LocationsDataState
    with DiagnosticableTreeMixin
    implements _LocationsDataState {
  const _$_LocationsDataState({@required this.locationList})
      : assert(locationList != null);

  @override
  final List<LocationsDatum> locationList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationsState.data(locationList: $locationList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationsState.data'))
      ..add(DiagnosticsProperty('locationList', locationList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationsDataState &&
            (identical(other.locationList, locationList) ||
                const DeepCollectionEquality()
                    .equals(other.locationList, locationList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationList);

  @JsonKey(ignore: true)
  @override
  _$LocationsDataStateCopyWith<_LocationsDataState> get copyWith =>
      __$LocationsDataStateCopyWithImpl<_LocationsDataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult data(List<LocationsDatum> locationList),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return data(locationList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(List<LocationsDatum> locationList),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(locationList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_LocationsLoadingState value),
    @required TResult data(_LocationsDataState value),
    @required TResult error(_LocationsErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_LocationsLoadingState value),
    TResult data(_LocationsDataState value),
    TResult error(_LocationsErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _LocationsDataState implements LocationsState {
  const factory _LocationsDataState(
      {@required List<LocationsDatum> locationList}) = _$_LocationsDataState;

  List<LocationsDatum> get locationList;
  @JsonKey(ignore: true)
  _$LocationsDataStateCopyWith<_LocationsDataState> get copyWith;
}

/// @nodoc
abstract class _$LocationsErrorStateCopyWith<$Res> {
  factory _$LocationsErrorStateCopyWith(_LocationsErrorState value,
          $Res Function(_LocationsErrorState) then) =
      __$LocationsErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationsErrorStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$LocationsErrorStateCopyWith<$Res> {
  __$LocationsErrorStateCopyWithImpl(
      _LocationsErrorState _value, $Res Function(_LocationsErrorState) _then)
      : super(_value, (v) => _then(v as _LocationsErrorState));

  @override
  _LocationsErrorState get _value => super._value as _LocationsErrorState;
}

/// @nodoc
class _$_LocationsErrorState
    with DiagnosticableTreeMixin
    implements _LocationsErrorState {
  const _$_LocationsErrorState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationsState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationsState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationsErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult data(List<LocationsDatum> locationList),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult data(List<LocationsDatum> locationList),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_LocationsLoadingState value),
    @required TResult data(_LocationsDataState value),
    @required TResult error(_LocationsErrorState value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_LocationsLoadingState value),
    TResult data(_LocationsDataState value),
    TResult error(_LocationsErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _LocationsErrorState implements LocationsState {
  const factory _LocationsErrorState() = _$_LocationsErrorState;
}
