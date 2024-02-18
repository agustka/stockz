// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Cache<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, bool isStale) available,
    required TResult Function() error,
    required TResult Function() expired,
    required TResult Function() notAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, bool isStale)? available,
    TResult? Function()? error,
    TResult? Function()? expired,
    TResult? Function()? notAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, bool isStale)? available,
    TResult Function()? error,
    TResult Function()? expired,
    TResult Function()? notAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheAvailable<T> value) available,
    required TResult Function(CacheError<T> value) error,
    required TResult Function(CacheExpired<T> value) expired,
    required TResult Function(CacheNotAvailable<T> value) notAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CacheAvailable<T> value)? available,
    TResult? Function(CacheError<T> value)? error,
    TResult? Function(CacheExpired<T> value)? expired,
    TResult? Function(CacheNotAvailable<T> value)? notAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheAvailable<T> value)? available,
    TResult Function(CacheError<T> value)? error,
    TResult Function(CacheExpired<T> value)? expired,
    TResult Function(CacheNotAvailable<T> value)? notAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheCopyWith<T, $Res> {
  factory $CacheCopyWith(Cache<T> value, $Res Function(Cache<T>) then) =
      _$CacheCopyWithImpl<T, $Res, Cache<T>>;
}

/// @nodoc
class _$CacheCopyWithImpl<T, $Res, $Val extends Cache<T>>
    implements $CacheCopyWith<T, $Res> {
  _$CacheCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CacheAvailableImplCopyWith<T, $Res> {
  factory _$$CacheAvailableImplCopyWith(_$CacheAvailableImpl<T> value,
          $Res Function(_$CacheAvailableImpl<T>) then) =
      __$$CacheAvailableImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, bool isStale});
}

/// @nodoc
class __$$CacheAvailableImplCopyWithImpl<T, $Res>
    extends _$CacheCopyWithImpl<T, $Res, _$CacheAvailableImpl<T>>
    implements _$$CacheAvailableImplCopyWith<T, $Res> {
  __$$CacheAvailableImplCopyWithImpl(_$CacheAvailableImpl<T> _value,
      $Res Function(_$CacheAvailableImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? isStale = null,
  }) {
    return _then(_$CacheAvailableImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      isStale: null == isStale
          ? _value.isStale
          : isStale // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CacheAvailableImpl<T> implements CacheAvailable<T> {
  const _$CacheAvailableImpl({required this.data, required this.isStale});

  @override
  final T data;
  @override
  final bool isStale;

  @override
  String toString() {
    return 'Cache<$T>.available(data: $data, isStale: $isStale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheAvailableImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.isStale, isStale) || other.isStale == isStale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), isStale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheAvailableImplCopyWith<T, _$CacheAvailableImpl<T>> get copyWith =>
      __$$CacheAvailableImplCopyWithImpl<T, _$CacheAvailableImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, bool isStale) available,
    required TResult Function() error,
    required TResult Function() expired,
    required TResult Function() notAvailable,
  }) {
    return available(data, isStale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, bool isStale)? available,
    TResult? Function()? error,
    TResult? Function()? expired,
    TResult? Function()? notAvailable,
  }) {
    return available?.call(data, isStale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, bool isStale)? available,
    TResult Function()? error,
    TResult Function()? expired,
    TResult Function()? notAvailable,
    required TResult orElse(),
  }) {
    if (available != null) {
      return available(data, isStale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheAvailable<T> value) available,
    required TResult Function(CacheError<T> value) error,
    required TResult Function(CacheExpired<T> value) expired,
    required TResult Function(CacheNotAvailable<T> value) notAvailable,
  }) {
    return available(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CacheAvailable<T> value)? available,
    TResult? Function(CacheError<T> value)? error,
    TResult? Function(CacheExpired<T> value)? expired,
    TResult? Function(CacheNotAvailable<T> value)? notAvailable,
  }) {
    return available?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheAvailable<T> value)? available,
    TResult Function(CacheError<T> value)? error,
    TResult Function(CacheExpired<T> value)? expired,
    TResult Function(CacheNotAvailable<T> value)? notAvailable,
    required TResult orElse(),
  }) {
    if (available != null) {
      return available(this);
    }
    return orElse();
  }
}

abstract class CacheAvailable<T> implements Cache<T> {
  const factory CacheAvailable(
      {required final T data,
      required final bool isStale}) = _$CacheAvailableImpl<T>;

  T get data;
  bool get isStale;
  @JsonKey(ignore: true)
  _$$CacheAvailableImplCopyWith<T, _$CacheAvailableImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheErrorImplCopyWith<T, $Res> {
  factory _$$CacheErrorImplCopyWith(
          _$CacheErrorImpl<T> value, $Res Function(_$CacheErrorImpl<T>) then) =
      __$$CacheErrorImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CacheErrorImplCopyWithImpl<T, $Res>
    extends _$CacheCopyWithImpl<T, $Res, _$CacheErrorImpl<T>>
    implements _$$CacheErrorImplCopyWith<T, $Res> {
  __$$CacheErrorImplCopyWithImpl(
      _$CacheErrorImpl<T> _value, $Res Function(_$CacheErrorImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CacheErrorImpl<T> implements CacheError<T> {
  const _$CacheErrorImpl();

  @override
  String toString() {
    return 'Cache<$T>.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CacheErrorImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, bool isStale) available,
    required TResult Function() error,
    required TResult Function() expired,
    required TResult Function() notAvailable,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, bool isStale)? available,
    TResult? Function()? error,
    TResult? Function()? expired,
    TResult? Function()? notAvailable,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, bool isStale)? available,
    TResult Function()? error,
    TResult Function()? expired,
    TResult Function()? notAvailable,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheAvailable<T> value) available,
    required TResult Function(CacheError<T> value) error,
    required TResult Function(CacheExpired<T> value) expired,
    required TResult Function(CacheNotAvailable<T> value) notAvailable,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CacheAvailable<T> value)? available,
    TResult? Function(CacheError<T> value)? error,
    TResult? Function(CacheExpired<T> value)? expired,
    TResult? Function(CacheNotAvailable<T> value)? notAvailable,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheAvailable<T> value)? available,
    TResult Function(CacheError<T> value)? error,
    TResult Function(CacheExpired<T> value)? expired,
    TResult Function(CacheNotAvailable<T> value)? notAvailable,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CacheError<T> implements Cache<T> {
  const factory CacheError() = _$CacheErrorImpl<T>;
}

/// @nodoc
abstract class _$$CacheExpiredImplCopyWith<T, $Res> {
  factory _$$CacheExpiredImplCopyWith(_$CacheExpiredImpl<T> value,
          $Res Function(_$CacheExpiredImpl<T>) then) =
      __$$CacheExpiredImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CacheExpiredImplCopyWithImpl<T, $Res>
    extends _$CacheCopyWithImpl<T, $Res, _$CacheExpiredImpl<T>>
    implements _$$CacheExpiredImplCopyWith<T, $Res> {
  __$$CacheExpiredImplCopyWithImpl(
      _$CacheExpiredImpl<T> _value, $Res Function(_$CacheExpiredImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CacheExpiredImpl<T> implements CacheExpired<T> {
  const _$CacheExpiredImpl();

  @override
  String toString() {
    return 'Cache<$T>.expired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CacheExpiredImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, bool isStale) available,
    required TResult Function() error,
    required TResult Function() expired,
    required TResult Function() notAvailable,
  }) {
    return expired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, bool isStale)? available,
    TResult? Function()? error,
    TResult? Function()? expired,
    TResult? Function()? notAvailable,
  }) {
    return expired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, bool isStale)? available,
    TResult Function()? error,
    TResult Function()? expired,
    TResult Function()? notAvailable,
    required TResult orElse(),
  }) {
    if (expired != null) {
      return expired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheAvailable<T> value) available,
    required TResult Function(CacheError<T> value) error,
    required TResult Function(CacheExpired<T> value) expired,
    required TResult Function(CacheNotAvailable<T> value) notAvailable,
  }) {
    return expired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CacheAvailable<T> value)? available,
    TResult? Function(CacheError<T> value)? error,
    TResult? Function(CacheExpired<T> value)? expired,
    TResult? Function(CacheNotAvailable<T> value)? notAvailable,
  }) {
    return expired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheAvailable<T> value)? available,
    TResult Function(CacheError<T> value)? error,
    TResult Function(CacheExpired<T> value)? expired,
    TResult Function(CacheNotAvailable<T> value)? notAvailable,
    required TResult orElse(),
  }) {
    if (expired != null) {
      return expired(this);
    }
    return orElse();
  }
}

abstract class CacheExpired<T> implements Cache<T> {
  const factory CacheExpired() = _$CacheExpiredImpl<T>;
}

/// @nodoc
abstract class _$$CacheNotAvailableImplCopyWith<T, $Res> {
  factory _$$CacheNotAvailableImplCopyWith(_$CacheNotAvailableImpl<T> value,
          $Res Function(_$CacheNotAvailableImpl<T>) then) =
      __$$CacheNotAvailableImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CacheNotAvailableImplCopyWithImpl<T, $Res>
    extends _$CacheCopyWithImpl<T, $Res, _$CacheNotAvailableImpl<T>>
    implements _$$CacheNotAvailableImplCopyWith<T, $Res> {
  __$$CacheNotAvailableImplCopyWithImpl(_$CacheNotAvailableImpl<T> _value,
      $Res Function(_$CacheNotAvailableImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CacheNotAvailableImpl<T> implements CacheNotAvailable<T> {
  const _$CacheNotAvailableImpl();

  @override
  String toString() {
    return 'Cache<$T>.notAvailable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheNotAvailableImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, bool isStale) available,
    required TResult Function() error,
    required TResult Function() expired,
    required TResult Function() notAvailable,
  }) {
    return notAvailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, bool isStale)? available,
    TResult? Function()? error,
    TResult? Function()? expired,
    TResult? Function()? notAvailable,
  }) {
    return notAvailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, bool isStale)? available,
    TResult Function()? error,
    TResult Function()? expired,
    TResult Function()? notAvailable,
    required TResult orElse(),
  }) {
    if (notAvailable != null) {
      return notAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CacheAvailable<T> value) available,
    required TResult Function(CacheError<T> value) error,
    required TResult Function(CacheExpired<T> value) expired,
    required TResult Function(CacheNotAvailable<T> value) notAvailable,
  }) {
    return notAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CacheAvailable<T> value)? available,
    TResult? Function(CacheError<T> value)? error,
    TResult? Function(CacheExpired<T> value)? expired,
    TResult? Function(CacheNotAvailable<T> value)? notAvailable,
  }) {
    return notAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CacheAvailable<T> value)? available,
    TResult Function(CacheError<T> value)? error,
    TResult Function(CacheExpired<T> value)? expired,
    TResult Function(CacheNotAvailable<T> value)? notAvailable,
    required TResult orElse(),
  }) {
    if (notAvailable != null) {
      return notAvailable(this);
    }
    return orElse();
  }
}

abstract class CacheNotAvailable<T> implements Cache<T> {
  const factory CacheNotAvailable() = _$CacheNotAvailableImpl<T>;
}
