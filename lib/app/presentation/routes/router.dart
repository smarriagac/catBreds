import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../domain/models/breeds/breeds.dart';
import '../../my_app.dart' show MyApp;
import '../modules/details/view/details_view.dart';
import '../modules/home/view/home_view.dart';
import 'routes.dart';

mixin RouterMixin on State<MyApp> {
  GoRouter? _router;

  late String _initialRouteName;
  bool _loading = true;
  bool get loading => _loading;

  GoRouter get router {
    if (_router != null) {
      return _router!;
    }

    final routes = [
      GoRoute(
        name: Routes.HOME,
        builder: (_, _) => const HomeView(),
        path: '/',
      ),
      GoRoute(
        name: Routes.DETAILS,
        builder: (_, state) => DetailsView(cat: state.extra as Breeds),
        path: '/details',
      ),
    ];

    final overrideRoutes = widget.overrideRoutes;
    if (overrideRoutes?.isNotEmpty ?? false) {
      final names = overrideRoutes!.map((e) => e.name);
      routes.removeWhere((element) {
        final name = element.name;
        if (name != null) {
          return names.contains(name);
        }
        return false;
      });
      routes.addAll(overrideRoutes);
    }

    final initialLocation = routes
        .firstWhere(
          (element) => element.name == _initialRouteName,
          orElse: () => routes.first,
        )
        .path;

    _router = GoRouter(initialLocation: initialLocation, routes: routes);
    return _router!;
  }

  @override
  void initState() {
    super.initState();
    if (widget.initialRouteName != null) {
      _initialRouteName = widget.initialRouteName!;
      _loading = false;
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) => _init());
    }
  }

  void _init() async {
    _initialRouteName = widget.initialRouteName ?? Routes.HOME;
    await Future.delayed(const Duration(milliseconds: 3000));
    _loading = false;
    setState(() {});
  }
}
