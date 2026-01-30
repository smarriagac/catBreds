import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/models/breeds/breeds.dart';
import '../../../../global/extensions/build_context_ext.dart';
import '../../../../global/widgets/error_image_card.dart';
import '../../utils/get_image_url.dart';

class CardCat extends StatelessWidget {
  const CardCat({super.key, required this.cats, this.onTap});

  final Breeds cats;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: colors.shadow.withAlpha(20),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            Positioned.fill(
              child: Hero(
                tag: ValueKey(cats.referenceImageId),
                child: ExtendedImage.network(
                  getImageUrl(cats.referenceImageId?.trim() ?? ''),
                  fit: BoxFit.cover,
                  headers: const {'Access-Control-Allow-Origin': '*'},
                  handleLoadingProgress: true,
                  loadStateChanged: (state) {
                    final status = state.extendedImageLoadState;
                    return {LoadState.failed: const ErrorCatImage()}[status];
                  },
                ),
              ),
            ),

            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 100,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black.withAlpha(120), Colors.transparent],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    cats.name,
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: .bold,
                      color: colors.onPrimary,
                      fontSize: context.dp(2.2),
                    ),
                  ),

                  Container(
                    color: Colors.transparent,
                    child: InkWell(
                      key: Key('more-horiz-rounded-${cats.name}'),
                      onTap: onTap,
                      child: Icon(
                        Icons.more_horiz_rounded,
                        color: colors.onPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: colors.surface.withAlpha(180),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          colors.surface.withAlpha(200),
                          colors.surface.withAlpha(150),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      mainAxisSize: .min,
                      spacing: 10,
                      children: [
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: cats.temperament
                              .split(',')
                              .take(3)
                              .map(
                                (temp) => Container(
                                  padding: const .symmetric(
                                    horizontal: 10,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: colors.primaryContainer.withAlpha(
                                      100,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    border: .all(
                                      color: colors.primary.withAlpha(40),
                                    ),
                                  ),
                                  child: Text(
                                    temp.trim(),
                                    style: textTheme.labelSmall?.copyWith(
                                      color: colors.onPrimaryContainer,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        Row(
                          crossAxisAlignment: .end,
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: .start,
                              spacing: 4,
                              children: [
                                Row(
                                  spacing: 2,
                                  crossAxisAlignment: .center,
                                  children: [
                                    Icon(
                                      Icons.location_on_rounded,
                                      size: 18,
                                      color: colors.primary.withAlpha(180),
                                    ),
                                    Text(
                                      cats.origin,
                                      style: textTheme.bodyMedium?.copyWith(
                                        color: colors.onSurfaceVariant,
                                        fontWeight: .w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.psychology_rounded,
                                  size: 18,
                                  color: colors.primary.withAlpha(180),
                                ),
                                Text(
                                  '${cats.intelligence}',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: colors.onSurfaceVariant,
                                    fontWeight: .w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
