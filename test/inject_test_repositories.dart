import 'package:catlog/app/domain/repositories/breeds_repository.dart';
import 'package:catlog/app/presentation/global/service_locator/service_locator.dart';

import 'mocks.dart';

void injectTestRepositories({bool defaultStubs = true}) {
  ServiceLocator.instance.clear();
  ServiceLocator.instance.put<BreedsRepository>(MockBreedsRepository());
}
