part of 'language_cubit.dart';

enum LanguageStatus {
  initial,
  loadLanguage,
}

@immutable
class LanguageState extends Equatable {
  final LanguageStatus status;
  final UserLocale locale;

  const LanguageState({
    required this.status,
    required this.locale,
  });

  factory LanguageState.initial() {
    return LanguageState(
      status: LanguageStatus.initial,
      locale: FlavorConfig.instance.variables.defaultLocale,
    );
  }

  LanguageState copyWith({
    LanguageStatus? status,
    UserLocale? locale,
  }) {
    return LanguageState(
      status: status ?? this.status,
      locale: locale ?? this.locale,
    );
  }

  @override
  List<Object?> get props => [status, locale];
}
