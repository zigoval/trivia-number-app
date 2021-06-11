import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_arch_tdd_trivia_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'number_trivia_event.dart';
part 'number_trivia_state.dart';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  NumberTriviaBloc() : super(Empty());

  @override
  Stream<NumberTriviaState> mapEventToState(
    NumberTriviaEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
