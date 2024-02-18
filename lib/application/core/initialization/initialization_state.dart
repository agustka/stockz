part of 'initialization_cubit.dart';

enum InitializationStatus {
  initial,
  purge,
}

@immutable
class InitializationState extends Equatable {
  final InitializationStatus status;

  const InitializationState({
    required this.status,
  });

  factory InitializationState.initial() {
    return const InitializationState(
      status: InitializationStatus.initial,
    );
  }

  InitializationState copyWith({
    InitializationStatus? status,
  }) {
    return InitializationState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [status];
}
