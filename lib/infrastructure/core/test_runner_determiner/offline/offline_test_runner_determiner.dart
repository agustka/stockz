import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/test_runner_determiner/i_test_runner_determiner.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.offline
@Singleton(as: ITestRunnerDeterminer)
class OfflineTestRunnerDeterminer implements ITestRunnerDeterminer {
  @override
  bool get isRunningOffline => true;
}
