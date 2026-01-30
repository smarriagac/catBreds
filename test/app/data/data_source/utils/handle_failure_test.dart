import 'package:catlog/app/data/data_source/utils/handle_failure.dart';
import 'package:catlog/app/data/http/http.dart';
import 'package:catlog/app/domain/either/either.dart';
import 'package:catlog/app/domain/models/failure/response_failure.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('handleFailure', () {
    test('404', () {
      final httpFailure = HttpFailure(statusCode: 404);
      final result = handleFailure(httpFailure);
      expect(
        result.when(left: (l) => l, right: (r) => null),
        ResponseFailure.notFound(),
      );
    });

    test('401', () {
      final httpFailure = HttpFailure(statusCode: 401);
      final result = handleFailure(httpFailure);
      expect(
        result.when(left: (l) => l, right: (r) => null),
        ResponseFailure.unauthorized(),
      );
    });

    test('400', () {
      final httpFailure = HttpFailure(statusCode: 400);
      final result = handleFailure(httpFailure);
      expect(
        result.when(left: (l) => l, right: (r) => null),
        ResponseFailure.unauthorized(),
      );
    });

    test('NetworkException', () {
      final httpFailure = HttpFailure(exception: NetworkException());
      final result = handleFailure(httpFailure);
      expect(
        result.when(left: (l) => l, right: (r) => null),
        ResponseFailure.network(),
      );
    });

    test('unknown', () {
      final httpFailure = HttpFailure(statusCode: 500);
      final result = handleFailure(httpFailure);
      expect(
        result.when(left: (l) => l, right: (r) => null),
        ResponseFailure.unknow(),
      );
    });
  });
}
