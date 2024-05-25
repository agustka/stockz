import 'package:event_bus/event_bus.dart';
import 'package:injectable/injectable.dart';

@module
abstract class EventBusModule {
  EventBus get eventBus {
    return EventBus();
  }
}
