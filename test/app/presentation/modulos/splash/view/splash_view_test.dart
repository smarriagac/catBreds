import 'package:catlog/app/domain/either/either.dart';
import 'package:catlog/app/presentation/modules/splash/view/splash_view.dart';
import 'package:catlog/app/presentation/routes/routes.dart';
import 'package:catlog/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/mockito.dart';

import '../../../../../inject_test_repositories.dart';
import '../../../../../mocks.mocks.dart';

void main() {
  setUp(injectTestRepositories);

  group('SplashView', () {
    testWidgets('SplashView > home', (tester) async {
      // Arrange
      when(
        MockBreedsRepository().getBreeds(page: 0, limit: 10),
      ).thenAnswer((_) async => Right([]));

      // Act
      await _initApp(tester);

      // Assert
      expect(find.byType(SplashView), findsOneWidget);

      // Act
      await tester.pump();

      await tester.pump(const Duration(milliseconds: 2501));

      await tester.pump(const Duration(milliseconds: 501));

      await tester.pumpAndSettle();

      expect(find.text('home'), findsOneWidget);
    });
  });
}

Future<void> _initApp(WidgetTester tester) {
  tester.view.physicalSize = const Size(4000, 12000);
  return tester.pumpWidget(
    Root(
      overrideRoutes: [
        GoRoute(
          path: '/',
          name: Routes.HOME,
          builder: (context, state) =>
              Scaffold(body: const Center(child: Text('home'))),
        ),
      ],
    ),
  );
}
