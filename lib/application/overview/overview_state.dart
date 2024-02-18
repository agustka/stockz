part of 'overview_cubit.dart';

enum OverviewStatus {
  loading,
  loaded,
  error,
}

class OverviewState extends Equatable {
  final OverviewStatus status;

  const OverviewState({
    required this.status,
  });

  factory OverviewState.initial() {
    return const OverviewState(
      status: OverviewStatus.loading,
    );
  }

  OverviewState copyWith({
    OverviewStatus? status,
  }) {
    return OverviewState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
    status,
  ];
}
