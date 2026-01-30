import 'package:catlog/app/domain/either/either.dart';
import 'package:catlog/app/domain/models/failure/response_failure.dart';
import 'package:catlog/app/inject_repositories.dart';
import 'package:mockito/mockito.dart';

import '../../../../../mocks/mocks.dart';

void homeViewMockSuccess() {
  const breeds = [mockBreeds];
  when(Repositories.breeds.getBreeds()).thenAnswer((_) async {
    await Future.delayed(const Duration(milliseconds: 100));
    return Right(breeds);
  });
}

void homeViewMockFail() {
  when(Repositories.breeds.getBreeds()).thenAnswer((_) async {
    await Future.delayed(const Duration(milliseconds: 100));
    return Left(ResponseFailure.network());
  });
}
