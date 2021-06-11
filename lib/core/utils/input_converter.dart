import 'package:dartz/dartz.dart';

import '../error/failure.dart';

class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String str) {
    int val = int.tryParse(str);
    if (val == null || val < 0) {
      return Left(InvalidInputFailure());
    } else {
      return Right(int.parse(str));
    }
  }
}

class InvalidInputFailure extends Failure {
  @override
  List<Object> get props => [];
}
