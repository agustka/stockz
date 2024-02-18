import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/service/timer/i_poll_and_debounce.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.offline
@Injectable(as: IPollAndDebounce)
class OfflinePollAndDebounce implements IPollAndDebounce {
  @override
  void delayCall({required Duration delay, required VoidCallback action}) {
    action();
  }

  @override
  void cancelDelayCall() {}
}
