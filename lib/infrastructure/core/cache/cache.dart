import 'package:freezed_annotation/freezed_annotation.dart';

part 'cache.freezed.dart';

/// A class that handles caching results and the possible failures associated with that such as
/// caching error, expired data or data does not exist
@freezed
class Cache<T> with _$Cache<T> {
  const factory Cache.available({required T data, required bool isStale}) = CacheAvailable<T>;

  const factory Cache.error() = CacheError<T>;

  const factory Cache.expired() = CacheExpired<T>;

  const factory Cache.notAvailable() = CacheNotAvailable<T>;
}
