import 'package:flutter/material.dart';

import '../../../global/extensions/build_context_ext.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _logoScale;
  late Animation<double> _logoOpacity;
  late Animation<double> _textOpacity;
  late Animation<Offset> _textSlide;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );

    _logoScale = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.6, curve: Curves.elasticOut),
    );

    _logoOpacity = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.4, curve: Curves.easeIn),
    );

    _textOpacity = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.4, 0.8, curve: Curves.easeIn),
    );

    _textSlide = Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.4, 1.0, curve: Curves.easeOutCubic),
          ),
        );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _init();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _init() async {
    await _controller.forward();
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Material(
        child: Container(
          width: .infinity,
          height: .infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: .topCenter,
              end: .bottomCenter,
              colors: [colors.surface, colors.surfaceContainerLow],
            ),
          ),
          child: Column(
            crossAxisAlignment: .center,
            mainAxisAlignment: .center,
            spacing: 40,
            children: [
              FadeTransition(
                opacity: _logoOpacity,
                child: ScaleTransition(
                  scale: _logoScale,
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: .circle,
                      boxShadow: [
                        BoxShadow(
                          color: colors.primary.withAlpha((0.1 * 255).round()),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    padding: const .all(30),
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
              ),
              FadeTransition(
                opacity: _textOpacity,
                child: SlideTransition(
                  position: _textSlide,
                  child: Column(
                    spacing: 8,
                    mainAxisSize: .min,
                    children: [
                      Text(
                        'Cat Breeds',
                        style: context.textTheme.headlineLarge?.copyWith(
                          fontSize: 48,
                          fontWeight: .w900,
                          color: colors.primary,
                          letterSpacing: -1,
                        ),
                      ),
                      Container(
                        height: 4,
                        width: 40,
                        decoration: BoxDecoration(
                          color: colors.primaryContainer,
                          borderRadius: .circular(2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
