import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../domain/models/breeds/breeds.dart';
import '../../../../global/widgets/error_image_card.dart';
import '../../../home/utils/get_image_url.dart';

class DetailsCatHeader extends StatelessWidget {
  const DetailsCatHeader({super.key, required this.cat});

  final Breeds cat;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final topPadding = MediaQuery.of(context).padding.top;

    return SizedBox(
      height: size.height * 0.45,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            tag: ValueKey(cat.referenceImageId),
            child: ExtendedImage.network(
              getImageUrl(cat.referenceImageId?.trim() ?? ''),
              fit: BoxFit.cover,
              loadStateChanged: (state) {
                final status = state.extendedImageLoadState;
                return {LoadState.failed: const ErrorCatImage()}[status];
              },
            ),
          ),
          const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black38,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black54,
                ],
                stops: [0.0, 0.2, 0.7, 1.0],
              ),
            ),
          ),
          Positioned(
            top: topPadding + 10,
            left: 10,
            child: IconButton(
              key: const Key('back-button-details'),
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
              onPressed: () => context.pop(),
            ),
          ),

          Positioned(
            bottom: 60,
            left: 24,
            right: 24,
            child: Text(
              cat.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black45,
                    blurRadius: 10,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
