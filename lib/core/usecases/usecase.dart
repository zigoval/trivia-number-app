import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../features/number_trivia/domain/entities/number_trivia.dart';
import '../error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, NumberTrivia>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
