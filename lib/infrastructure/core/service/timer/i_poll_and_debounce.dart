import 'package:flutter/foundation.dart';

abstract interface class IPollAndDebounce {
  void delayCall({required Duration delay, required VoidCallback action});

  void cancelDelayCall();
}
