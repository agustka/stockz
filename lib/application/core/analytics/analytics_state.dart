part of 'analytics_cubit.dart';

enum AnalyticsStatus {
  eventLogged,
  initial,
}

@immutable
class AnalyticsState extends Equatable {
  final AnalyticsStatus status;

  const AnalyticsState({
    required this.status,
  });

  factory AnalyticsState.initial() {
    return const AnalyticsState(
      status: AnalyticsStatus.initial,
    );
  }

  AnalyticsState copyWith({
    AnalyticsStatus? status,
  }) {
    return AnalyticsState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [status];
}
