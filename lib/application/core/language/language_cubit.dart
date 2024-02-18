import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/localization/user_locale.dart';
import 'package:stockz/setup.dart';

part 'language_state.dart';

@injectable
class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageState.initial());

  void subscribeToLocaleChangeEvents() {
    setLanguage(locale: FlavorConfig.instance.variables.defaultLocale);
  }

  void setLanguage({required UserLocale locale}) {
    emit(state.copyWith(status: LanguageStatus.loadLanguage, locale: locale));
  }

  @override
  @mustCallSuper
  Future<void> close() async {
    super.close();
  }
}
