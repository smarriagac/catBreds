import 'package:flutter/material.dart';

import '../../../../domain/models/breeds/breeds.dart';
import 'widgets/details_cat_body.dart';
import 'widgets/details_cat_header.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.cat});

  final Breeds cat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DetailsCatHeader(cat: cat),
          Expanded(child: DetailCatBody(cat: cat)),
        ],
      ),
    );
  }
}
