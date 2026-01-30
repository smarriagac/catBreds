import 'package:catlog/app/data/http/http.dart';
import 'package:catlog/app/inject_repositories.dart';
import 'package:catlog/app/presentation/global/service_locator/service_locator.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mocks.mocks.dart';

void main() {
  setUp(ServiceLocator.instance.clear);

  test('injectRepositories', () {
    injectDependencies(
      http: Http(baseUrl: '', apiKey: '', client: MockClient()),
    );

    Repositories.breeds;
  });
}
