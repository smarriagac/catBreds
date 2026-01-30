import 'data/data_source/remote/breeds_api.dart';
import 'data/http/http.dart';
import 'data/repositories_impl/breeds_repository_impl.dart';
import 'domain/repositories/breeds_repository.dart';
import 'presentation/global/service_locator/service_locator.dart';

Future<void> injectDependencies({required Http http}) async {
  ServiceLocator.instance.put<BreedsRepository>(
    BreedsRepositoryImpl(BreedsAPI(http)),
  );
}

class Repositories {
  Repositories._(); // coverage:ignore-line

  ///
  static BreedsRepository get breeds => ServiceLocator.instance.find();
}
