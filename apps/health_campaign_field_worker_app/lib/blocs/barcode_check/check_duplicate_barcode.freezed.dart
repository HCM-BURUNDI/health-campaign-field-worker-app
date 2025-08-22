// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_duplicate_barcode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckQrCodeEvent {
  String get userId => throw _privateConstructorUsedError;
  List<GS1Barcode> get barcodes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, List<GS1Barcode> barcodes)
        loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, List<GS1Barcode> barcodes)? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, List<GS1Barcode> barcodes)? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckQrCodeLoadDataEvent value) loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckQrCodeLoadDataEvent value)? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckQrCodeLoadDataEvent value)? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckQrCodeEventCopyWith<CheckQrCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckQrCodeEventCopyWith<$Res> {
  factory $CheckQrCodeEventCopyWith(
          CheckQrCodeEvent value, $Res Function(CheckQrCodeEvent) then) =
      _$CheckQrCodeEventCopyWithImpl<$Res, CheckQrCodeEvent>;
  @useResult
  $Res call({String userId, List<GS1Barcode> barcodes});
}

/// @nodoc
class _$CheckQrCodeEventCopyWithImpl<$Res, $Val extends CheckQrCodeEvent>
    implements $CheckQrCodeEventCopyWith<$Res> {
  _$CheckQrCodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? barcodes = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      barcodes: null == barcodes
          ? _value.barcodes
          : barcodes // ignore: cast_nullable_to_non_nullable
              as List<GS1Barcode>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckQrCodeLoadDataEventImplCopyWith<$Res>
    implements $CheckQrCodeEventCopyWith<$Res> {
  factory _$$CheckQrCodeLoadDataEventImplCopyWith(
          _$CheckQrCodeLoadDataEventImpl value,
          $Res Function(_$CheckQrCodeLoadDataEventImpl) then) =
      __$$CheckQrCodeLoadDataEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, List<GS1Barcode> barcodes});
}

/// @nodoc
class __$$CheckQrCodeLoadDataEventImplCopyWithImpl<$Res>
    extends _$CheckQrCodeEventCopyWithImpl<$Res, _$CheckQrCodeLoadDataEventImpl>
    implements _$$CheckQrCodeLoadDataEventImplCopyWith<$Res> {
  __$$CheckQrCodeLoadDataEventImplCopyWithImpl(
      _$CheckQrCodeLoadDataEventImpl _value,
      $Res Function(_$CheckQrCodeLoadDataEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? barcodes = null,
  }) {
    return _then(_$CheckQrCodeLoadDataEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      barcodes: null == barcodes
          ? _value._barcodes
          : barcodes // ignore: cast_nullable_to_non_nullable
              as List<GS1Barcode>,
    ));
  }
}

/// @nodoc

class _$CheckQrCodeLoadDataEventImpl implements CheckQrCodeLoadDataEvent {
  const _$CheckQrCodeLoadDataEventImpl(
      {required this.userId, required final List<GS1Barcode> barcodes})
      : _barcodes = barcodes;

  @override
  final String userId;
  final List<GS1Barcode> _barcodes;
  @override
  List<GS1Barcode> get barcodes {
    if (_barcodes is EqualUnmodifiableListView) return _barcodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barcodes);
  }

  @override
  String toString() {
    return 'CheckQrCodeEvent.loadData(userId: $userId, barcodes: $barcodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckQrCodeLoadDataEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._barcodes, _barcodes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, const DeepCollectionEquality().hash(_barcodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckQrCodeLoadDataEventImplCopyWith<_$CheckQrCodeLoadDataEventImpl>
      get copyWith => __$$CheckQrCodeLoadDataEventImplCopyWithImpl<
          _$CheckQrCodeLoadDataEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, List<GS1Barcode> barcodes)
        loadData,
  }) {
    return loadData(userId, barcodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, List<GS1Barcode> barcodes)? loadData,
  }) {
    return loadData?.call(userId, barcodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, List<GS1Barcode> barcodes)? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(userId, barcodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckQrCodeLoadDataEvent value) loadData,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckQrCodeLoadDataEvent value)? loadData,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckQrCodeLoadDataEvent value)? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class CheckQrCodeLoadDataEvent implements CheckQrCodeEvent {
  const factory CheckQrCodeLoadDataEvent(
          {required final String userId,
          required final List<GS1Barcode> barcodes}) =
      _$CheckQrCodeLoadDataEventImpl;

  @override
  String get userId;
  @override
  List<GS1Barcode> get barcodes;
  @override
  @JsonKey(ignore: true)
  _$$CheckQrCodeLoadDataEventImplCopyWith<_$CheckQrCodeLoadDataEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckQrCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> duplicates, bool hasDuplicates)
        duplicate,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> duplicates, bool hasDuplicates)? duplicate,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> duplicates, bool hasDuplicates)? duplicate,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckQrCodeDuplicateState value) duplicate,
    required TResult Function(CheckQrCodeErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckQrCodeDuplicateState value)? duplicate,
    TResult? Function(CheckQrCodeErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckQrCodeDuplicateState value)? duplicate,
    TResult Function(CheckQrCodeErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckQrCodeStateCopyWith<$Res> {
  factory $CheckQrCodeStateCopyWith(
          CheckQrCodeState value, $Res Function(CheckQrCodeState) then) =
      _$CheckQrCodeStateCopyWithImpl<$Res, CheckQrCodeState>;
}

/// @nodoc
class _$CheckQrCodeStateCopyWithImpl<$Res, $Val extends CheckQrCodeState>
    implements $CheckQrCodeStateCopyWith<$Res> {
  _$CheckQrCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckQrCodeDuplicateStateImplCopyWith<$Res> {
  factory _$$CheckQrCodeDuplicateStateImplCopyWith(
          _$CheckQrCodeDuplicateStateImpl value,
          $Res Function(_$CheckQrCodeDuplicateStateImpl) then) =
      __$$CheckQrCodeDuplicateStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> duplicates, bool hasDuplicates});
}

/// @nodoc
class __$$CheckQrCodeDuplicateStateImplCopyWithImpl<$Res>
    extends _$CheckQrCodeStateCopyWithImpl<$Res,
        _$CheckQrCodeDuplicateStateImpl>
    implements _$$CheckQrCodeDuplicateStateImplCopyWith<$Res> {
  __$$CheckQrCodeDuplicateStateImplCopyWithImpl(
      _$CheckQrCodeDuplicateStateImpl _value,
      $Res Function(_$CheckQrCodeDuplicateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duplicates = null,
    Object? hasDuplicates = null,
  }) {
    return _then(_$CheckQrCodeDuplicateStateImpl(
      duplicates: null == duplicates
          ? _value._duplicates
          : duplicates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hasDuplicates: null == hasDuplicates
          ? _value.hasDuplicates
          : hasDuplicates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckQrCodeDuplicateStateImpl implements CheckQrCodeDuplicateState {
  const _$CheckQrCodeDuplicateStateImpl(
      {final List<String> duplicates = const [], this.hasDuplicates = false})
      : _duplicates = duplicates;

  final List<String> _duplicates;
  @override
  @JsonKey()
  List<String> get duplicates {
    if (_duplicates is EqualUnmodifiableListView) return _duplicates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_duplicates);
  }

  @override
  @JsonKey()
  final bool hasDuplicates;

  @override
  String toString() {
    return 'CheckQrCodeState.duplicate(duplicates: $duplicates, hasDuplicates: $hasDuplicates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckQrCodeDuplicateStateImpl &&
            const DeepCollectionEquality()
                .equals(other._duplicates, _duplicates) &&
            (identical(other.hasDuplicates, hasDuplicates) ||
                other.hasDuplicates == hasDuplicates));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_duplicates), hasDuplicates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckQrCodeDuplicateStateImplCopyWith<_$CheckQrCodeDuplicateStateImpl>
      get copyWith => __$$CheckQrCodeDuplicateStateImplCopyWithImpl<
          _$CheckQrCodeDuplicateStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> duplicates, bool hasDuplicates)
        duplicate,
    required TResult Function(String message) error,
  }) {
    return duplicate(duplicates, hasDuplicates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> duplicates, bool hasDuplicates)? duplicate,
    TResult? Function(String message)? error,
  }) {
    return duplicate?.call(duplicates, hasDuplicates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> duplicates, bool hasDuplicates)? duplicate,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (duplicate != null) {
      return duplicate(duplicates, hasDuplicates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckQrCodeDuplicateState value) duplicate,
    required TResult Function(CheckQrCodeErrorState value) error,
  }) {
    return duplicate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckQrCodeDuplicateState value)? duplicate,
    TResult? Function(CheckQrCodeErrorState value)? error,
  }) {
    return duplicate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckQrCodeDuplicateState value)? duplicate,
    TResult Function(CheckQrCodeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (duplicate != null) {
      return duplicate(this);
    }
    return orElse();
  }
}

abstract class CheckQrCodeDuplicateState implements CheckQrCodeState {
  const factory CheckQrCodeDuplicateState(
      {final List<String> duplicates,
      final bool hasDuplicates}) = _$CheckQrCodeDuplicateStateImpl;

  List<String> get duplicates;
  bool get hasDuplicates;
  @JsonKey(ignore: true)
  _$$CheckQrCodeDuplicateStateImplCopyWith<_$CheckQrCodeDuplicateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckQrCodeErrorStateImplCopyWith<$Res> {
  factory _$$CheckQrCodeErrorStateImplCopyWith(
          _$CheckQrCodeErrorStateImpl value,
          $Res Function(_$CheckQrCodeErrorStateImpl) then) =
      __$$CheckQrCodeErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CheckQrCodeErrorStateImplCopyWithImpl<$Res>
    extends _$CheckQrCodeStateCopyWithImpl<$Res, _$CheckQrCodeErrorStateImpl>
    implements _$$CheckQrCodeErrorStateImplCopyWith<$Res> {
  __$$CheckQrCodeErrorStateImplCopyWithImpl(_$CheckQrCodeErrorStateImpl _value,
      $Res Function(_$CheckQrCodeErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CheckQrCodeErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckQrCodeErrorStateImpl implements CheckQrCodeErrorState {
  const _$CheckQrCodeErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CheckQrCodeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckQrCodeErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckQrCodeErrorStateImplCopyWith<_$CheckQrCodeErrorStateImpl>
      get copyWith => __$$CheckQrCodeErrorStateImplCopyWithImpl<
          _$CheckQrCodeErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> duplicates, bool hasDuplicates)
        duplicate,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> duplicates, bool hasDuplicates)? duplicate,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> duplicates, bool hasDuplicates)? duplicate,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckQrCodeDuplicateState value) duplicate,
    required TResult Function(CheckQrCodeErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckQrCodeDuplicateState value)? duplicate,
    TResult? Function(CheckQrCodeErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckQrCodeDuplicateState value)? duplicate,
    TResult Function(CheckQrCodeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CheckQrCodeErrorState implements CheckQrCodeState {
  const factory CheckQrCodeErrorState({required final String message}) =
      _$CheckQrCodeErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CheckQrCodeErrorStateImplCopyWith<_$CheckQrCodeErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
