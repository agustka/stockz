import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/test_runner_determiner/i_test_runner_determiner.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@Injectable(as: ITestRunnerDeterminer)
class TestRunnerDeterminer implements ITestRunnerDeterminer {
  @override
  bool get isRunningOffline => false;
}
