class BaseServiceConfig {
  final Duration defaultTimeToLive = const Duration(minutes: 30);
  final num maxRetriesCount = 10;
  final Duration retryDelayDuration = const Duration(milliseconds: 100);
  final List<num> retryStatusCodes = [401];
}
