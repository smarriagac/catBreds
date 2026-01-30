import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'app/data/http/http.dart';
import 'app/inject_repositories.dart';
import 'app/my_app.dart';
import 'app/presentation/modules/home/controller/home_controller.dart';

// coverage:ignore-start
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final http = Http(
    baseUrl: 'https://api.thecatapi.com',
    useApiKey: true,
    apiKey:
        'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWkyW2nr',
  );

  await injectDependencies(http: http);

  runApp(const Root());
}
// coverage:ignore-end

class Root extends StatelessWidget {
  const Root({super.key, this.initialRouteName, this.overrideRoutes});

  final String? initialRouteName;
  final List<GoRoute>? overrideRoutes;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeController>(
          create: (context) {
            return HomeController(breedsRepository: Repositories.breeds)
              ..init();
          },
        ),
      ],
      child: MyApp(
        initialRouteName: initialRouteName,
        overrideRoutes: overrideRoutes,
      ),
    );
  }
}
