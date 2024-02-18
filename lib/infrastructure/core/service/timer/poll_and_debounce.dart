import 'dart:async';
import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/service/timer/i_poll_and_debounce.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@Injectable(as: IPollAndDebounce)
class PollAndDebounce implements IPollAndDebounce {
  Timer? _timer;

  @override
  void delayCall({required Duration delay, required VoidCallback action}) {
    cancelDelayCall();
    _timer = Timer(delay, () {
      _timer = null;
      action();
    });
  }

  @override
  void cancelDelayCall() {
    _timer?.cancel();
    _timer = null;
  }

// TODO add polling logic - or separate out polling logic
}
