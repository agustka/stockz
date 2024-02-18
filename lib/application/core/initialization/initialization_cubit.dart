import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'initialization_state.dart';

@LazySingleton()
class InitializationCubit extends Cubit<InitializationState> {
  InitializationCubit() : super(InitializationState.initial());

  void init() {
  }

  @override
  @mustCallSuper
  Future<void> close() async {
    super.close();
  }
}
