import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';
import 'package:stockz/setup.dart';

enum CachingPolicy {
  /// Always provide cached data, even if it's expired. A refresh should be performed after serving the expired data
  /// so this caching policy should only be employed when subscribing to data using streams.
  alwaysProvide,

  /// Only serve cached data if it's not expired. If expired, caller will get a "expired" dataset back. It is up
  /// to the caller to decide what to do with that information, most of the time a re-fetch is performed.
  onlyServeNotExpired,
}

mixin BaseCache {
  Duration get timeToLive => const Duration(days: 14);

  Future<Cache<S>> serveCache<S, T>({
    required Future<T> Function() getInput,
    required DateTime Function(T) getExpires,
    required S Function(T) conversionMethod,
    Function()? deleteExpired,
    CachingPolicy policy = CachingPolicy.onlyServeNotExpired,
  }) async {
    try {
      final Future<T> inputFuture = getInput();
      final T input = await inputFuture;
      if (input is List && input.isEmpty || input == null) {
        return const Cache.notAvailable();
      } else if (policy == CachingPolicy.onlyServeNotExpired && _isExpired(getExpires(input))) {
        deleteExpired?.call();
        return const Cache.expired();
      }
      return Cache.available(
        data: conversionMethod(input),
        isStale: _isExpired(getExpires(input)),
      );
    } catch (e) {
      err(e);
      return Future.value(const Cache.notAvailable());
    }
  }

  bool _isExpired(DateTime expires) {
    final DateTime now = DateTime.now();
    return now.millisecondsSinceEpoch > expires.millisecondsSinceEpoch;
  }

  void handleInsertionErrors(Future insertionFuture, {String origination = ""}) {
    insertionFuture.catchError((error) {
      err("From: $origination: $error");
    });
  }

  void handleDeletionErrors(Future deletedFuture) {
    deletedFuture.catchError((error) {
      err(error);
    });
  }
}
