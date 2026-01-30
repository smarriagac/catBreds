import 'package:catlog/app/domain/either/either.dart';
import 'package:catlog/app/domain/models/failure/response_failure.dart';
import 'package:catlog/app/presentation/modules/home/controller/home_controller.dart';
import 'package:catlog/app/presentation/modules/home/controller/state/home_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../../mocks.dart';
import '../../../../../mocks/mocks.dart';

void main() {
  late HomeController controller;
  late MockBreedsRepository breedsRepository;
  setUpAll(() {
    breedsRepository = MockBreedsRepository();
    controller = HomeController(breedsRepository: breedsRepository);
  });

  group('HomeController ', () {
    test('init > fail', () async {
      when(
        breedsRepository.getBreeds(limit: 15, page: 0),
      ).thenAnswer((_) => Future.value(Left(ResponseFailure.network())));

      expect(controller.oldState, isA<HomeStateLoading>());
      await controller.init();
      expect(controller.state, isA<HomeStateFailed>());
    });

    test('init > success', () async {
      when(
        breedsRepository.getBreeds(limit: 15, page: 0),
      ).thenAnswer((_) => Future.value(Right([mockBreeds])));

      expect(controller.oldState, isA<HomeStateLoading>());
      await controller.init();
      expect(controller.state, isA<HomeStateLoaded>());
    });
  });
}
