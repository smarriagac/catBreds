import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'presentation/global/theme/theme.dart';
import 'presentation/modules/splash/view/splash_view.dart';
import 'presentation/routes/router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key, this.initialRouteName, this.overrideRoutes});

  final String? initialRouteName;
  final List<GoRoute>? overrideRoutes;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with RouterMixin {
  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const SplashView();
    }
    return GestureDetector(
      // coverage:ignore-start
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      // coverage:ignore-end
      child: MaterialApp.router(
        routerConfig: router,
        title: 'Cats Breed',
        debugShowCheckedModeBanner: false,
        theme: getTheme(),
      ),
    );
  }
}
