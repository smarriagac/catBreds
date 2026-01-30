import 'package:catlog/app/domain/either/either.dart';
import 'package:catlog/app/presentation/modules/details/view/details_view.dart';
import 'package:catlog/app/presentation/modules/home/controller/home_controller.dart';
import 'package:catlog/app/presentation/modules/home/controller/state/home_state.dart';
import 'package:catlog/app/presentation/modules/home/view/home_view.dart';
import 'package:catlog/app/presentation/routes/routes.dart';
import 'package:catlog/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import '../../../../mocks.mocks.dart';
import '../../../../mocks/mocks.dart';

void main() {
  late HomeController homeController;
  late MockBreedsRepository mockBreedsRepository;

  setUp(() {
    mockBreedsRepository = MockBreedsRepository();
    homeController = HomeController(breedsRepository: mockBreedsRepository);
  });

  group('Navigation', () {
    testWidgets('Home > details ', (tester) async {
      // Arrange
      final breeds = [mockBreeds];
      final homePageState = HomePageState(listBreeds: breeds);
      homeController.onlyUpdate(HomeState.loaded(homePageState));
      await _initApp(tester, homeController);

      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
      await tester.pump();
      await tester.tap(find.byKey(const Key('more-horiz-rounded-Balinese')));
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
      await tester.pump();
      expect(find.byType(DetailsView), findsOneWidget);

      // Act
      await tester.tap(find.byKey(const Key('back-button-details')));

      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
      await tester.pump();
      // Assert
      expect(find.byKey(const Key('home')), findsOneWidget);
    });
  });

  group('=== HomeView (Scroll) ===', () {
    testWidgets('Test Scroll > success', (tester) async {
      // Arrange
      final breeds = List.generate(
        15,
        (index) => mockBreeds.copyWith(id: '$index', name: 'Cat $index'),
      );
      breeds.add(mockBreeds.copyWith(id: 'abyssinian', name: 'Abyssinian'));

      // Stub for pagination
      when(
        mockBreedsRepository.getBreeds(page: 1, limit: 15),
      ).thenAnswer((_) async => Right([]));

      final homePageState = HomePageState(listBreeds: breeds);
      homeController.onlyUpdate(HomeState.loaded(homePageState));

      // Use a smaller size to force scrolling
      await _initApp(tester, homeController, size: const Size(1080, 2400));

      // Act
      final listFinder = find.byWidgetPredicate(
        (widget) =>
            widget is Scrollable && widget.axisDirection == AxisDirection.down,
      );

      await tester.scrollUntilVisible(
        find.byKey(const Key('card-cat-Abyssinian')),
        500,
        scrollable: listFinder,
      );
      await tester.pump();

      // Wait for pagination delay
      await tester.pump(const Duration(milliseconds: 1500));
      await tester.pump();

      // Assert
      expect(find.byKey(const Key('card-cat-Abyssinian')), findsOneWidget);
    });
  });

  /// ============================================================================
  /// ============================================================================
  /// ============================================================================

  group('=== HomeView (search) ===', () {
    testWidgets('Test Input Search > success', (tester) async {
      // Arrange
      const breeds = [mockBreeds];
      final homePageState = HomePageState(listBreeds: breeds);
      homeController.onlyUpdate(HomeState.loaded(homePageState));
      const race = 'Balinese';
      await _initApp(tester, homeController);
      const inputSearchKey = Key('input-search');
      final findedInputName = find.byKey(inputSearchKey);

      // Act
      await tester.enterText(findedInputName, race);
      await tester.pump(const Duration(milliseconds: 600));
      await tester.pump();

      // Assert
      final findedRace = find.byKey(Key('card-cat-$race'));
      expect(findedRace, findsOneWidget);
    });

    testWidgets('Test Input Search > fail', (tester) async {
      // Arrange
      const breeds = [mockBreeds];
      final homePageState = HomePageState(listBreeds: breeds);
      homeController.onlyUpdate(HomeState.loaded(homePageState));
      const race = 'Balinese123';
      await _initApp(tester, homeController);
      const inputSearchKey = Key('input-search');
      final findedInputName = find.byKey(inputSearchKey);

      // Act
      await tester.enterText(findedInputName, race);
      await tester.pump(const Duration(milliseconds: 600));
      await tester.pump();

      // Assert
      final findedRace = find.byKey(Key('card-cat-$race'));
      expect(findedRace, findsNothing);
    });
  });

  // ============================================================================
  // ============================================================================
  // ============================================================================

  group(' ==== HomeView (Integration Test) ====', () {
    testWidgets('HomeView > success', (tester) async {
      // Arrange
      const breeds = [mockBreeds];
      final homePageState = HomePageState(listBreeds: breeds);
      homeController.onlyUpdate(HomeState.loaded(homePageState));

      // Act
      await _initApp(tester, homeController);

      // Assert
      expect(find.text('Balinese'), findsOneWidget);
      expect(find.text('United States'), findsOneWidget);
    });

    testWidgets('HomeView > fail', (tester) async {
      // Arrange

      // Force loaded state
      homeController.onlyUpdate(HomeState.failed());

      // Act
      await _initApp(tester, homeController);

      // Assert
      expect(find.byKey(const Key('error')), findsOneWidget);
    });

    testWidgets('HomeView > loading', (tester) async {
      // Arrange
      homeController.onlyUpdate(HomeState.loading());

      // Act
      await _initApp(tester, homeController);

      // Assert
      expect(find.byKey(const Key('loading')), findsOneWidget);
    });
  });
}

Future<void> _initApp(
  WidgetTester tester,
  HomeController controller, {
  Size size = const Size(4000, 12000),
}) {
  tester.view.physicalSize = size;
  return tester.pumpWidget(
    Root(
      initialRouteName: Routes.HOME,
      overrideRoutes: [
        GoRoute(
          path: '/',
          name: Routes.HOME,
          builder: (context, state) =>
              ChangeNotifierProvider<HomeController>.value(
                value: controller,
                child: const HomeView(),
              ),
        ),
        GoRoute(
          path: '/details',
          name: Routes.DETAILS,
          builder: (context, state) => const DetailsView(cat: mockBreeds),
        ),
      ],
    ),
  );
}
