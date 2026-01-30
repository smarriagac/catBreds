import 'package:catlog/app/presentation/modules/details/view/details_view.dart';
import 'package:catlog/app/presentation/routes/routes.dart';
import 'package:catlog/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../inject_test_repositories.dart';
import '../../../../mocks/mocks.dart';

void main() {
  setUp(() {
    GoogleFonts.config.allowRuntimeFetching = false;
    injectTestRepositories();
  });

  group('DetailsView Navigation', () {
    testWidgets('DetailsView > initApp', (tester) async {
      // Arrange
      await _initApp(tester);

      await tester.pump();
      // Assert
      expect(find.byType(DetailsView), findsOneWidget);
    });

    testWidgets('DetailsView > navigateToHome', (tester) async {
      // Arrange
      await _initApp(tester, initialRouteName: Routes.HOME);

      await tester.pump();
      await tester.tap(find.text('home'));
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
      expect(find.text('home'), findsOneWidget);
    });
  });

  group('DetailsView Data', () {
    testWidgets('DetailsView', (tester) async {
      // Arrange
      const cat = mockBreeds;

      // Act
      await _initApp(tester);

      // Assert
      expect(find.text(cat.name), findsOneWidget);
      expect(find.text(cat.description), findsOneWidget);
      expect(find.text(cat.origin), findsOneWidget);
      expect(find.text('${cat.lifeSpan} años'), findsOneWidget);
      expect(find.text(cat.temperament), findsOneWidget);
    });
  });
}

Future<void> _initApp(
  WidgetTester tester, {
  String initialRouteName = Routes.DETAILS,
}) {
  tester.view.physicalSize = const Size(4000, 12000);
  return tester.pumpWidget(
    Root(
      initialRouteName: initialRouteName,
      overrideRoutes: [
        GoRoute(
          path: '/details',
          name: Routes.DETAILS,
          builder: (context, state) => const DetailsView(cat: mockBreeds),
        ),
        GoRoute(
          path: '/',
          name: Routes.HOME,
          builder: (context, state) => Scaffold(
            body: Center(
              child: FilledButton(
                onPressed: () {
                  debugPrint('BUTTON PRESSED');
                  context.pushNamed(Routes.DETAILS);
                },
                child: const Text('home'),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
