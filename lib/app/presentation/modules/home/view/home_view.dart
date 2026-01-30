import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/home_controller.dart';
import '../controller/state/home_state.dart';
import 'widgets/cat_skeleton.dart';
import 'widgets/list_card_cat.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController beers = context.watch();
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      key: const Key('home'),
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 40, width: 40),
            const SizedBox(width: 20),
            Text(
              'Cat Breeds',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: colorScheme.tertiary,
              ),
            ),
          ],
        ),
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 600),
        switchInCurve: Curves.easeInOut,
        switchOutCurve: Curves.easeInOut,
        transitionBuilder: (child, animation) =>
            FadeTransition(opacity: animation, child: child),
        child: beers.state.when(
          loading: () => ListView.builder(
            key: const Key('loading'),
            itemCount: 5,
            itemBuilder: (_, _) => const CatSkeleton(),
          ),
          failed: () => const Center(
            key: Key('error'),
            child: Column(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline_rounded, size: 48, color: Colors.red),
                Text('Ocurrió un error al cargar los datos'),
              ],
            ),
          ),
          loaded: (homepageState) => ListCardCats(homeState: homepageState),
        ),
      ),
    );
  }
}
