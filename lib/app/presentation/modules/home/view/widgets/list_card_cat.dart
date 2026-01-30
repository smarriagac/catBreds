import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../routes/routes.dart';
import '../../controller/home_controller.dart';
import '../../controller/state/home_state.dart';
import 'card_cat.dart';
import 'cat_skeleton.dart';

class ListCardCats extends StatefulWidget {
  const ListCardCats({super.key, required this.homeState});
  final HomePageState homeState;

  @override
  State<ListCardCats> createState() => _ListCardCatsState();
}

class _ListCardCatsState extends State<ListCardCats>
    with AutomaticKeepAliveClientMixin {
  final scrollController = ScrollController();
  final _textEditingController = TextEditingController();
  final _query = ValueNotifier('');
  final _isSearching = ValueNotifier(false);
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    scrollController.dispose();
    _textEditingController.clear();
    _query.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow.withAlpha(15),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: TextField(
              key: const Key('input-search'),
              controller: _textEditingController,
              onChanged: (text) {
                _isSearching.value = true;
                if (_debounce?.isActive ?? false) _debounce?.cancel();
                _debounce = Timer(const Duration(milliseconds: 500), () {
                  if (mounted) {
                    _query.value = text.trim();
                    _isSearching.value = false;
                  }
                });
              },
              decoration: InputDecoration(
                hintText: '¿Qué raza buscas?',
                hintStyle: TextStyle(
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurfaceVariant.withAlpha(150),
                ),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Theme.of(context).colorScheme.primary,
                ),
                suffixIcon: ValueListenableBuilder(
                  valueListenable: _query,
                  builder: (_, query, _) {
                    if (query.isEmpty) return const SizedBox.shrink();
                    return IconButton(
                      icon: const Icon(Icons.close_rounded),
                      onPressed: () {
                        _textEditingController.clear();
                        _query.value = '';
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                    );
                  },
                ),
                filled: true,
                fillColor: Colors.transparent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: NotificationListener(
            onNotification: (t) {
              if (t is ScrollEndNotification) {
                final offset = scrollController.position.pixels;
                final maxScrollExtent =
                    scrollController.position.maxScrollExtent;
                if (offset >= maxScrollExtent) {
                  int page = widget.homeState.page;
                  context.read<HomeController>().init(page: page += 1);
                }
              }
              return true;
            },
            child: ValueListenableBuilder(
              valueListenable: _isSearching,
              builder: (_, isSearching, _) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  child: isSearching
                      ? ListView.separated(
                          key: const ValueKey('skeletons'),
                          separatorBuilder: (_, index) =>
                              const SizedBox(height: 5),
                          itemCount: 5,
                          itemBuilder: (_, index) => const AspectRatio(
                            aspectRatio: 4 / 3,
                            child: CatSkeleton(),
                          ),
                        )
                      : ValueListenableBuilder(
                          key: const ValueKey('results'),
                          valueListenable: _query,
                          builder: (_, query, _) {
                            final filteredUser = query.isEmpty
                                ? widget.homeState.listBreeds
                                : widget.homeState.listBreeds
                                      .where(
                                        (e) => e.name.toLowerCase().contains(
                                          query.toLowerCase(),
                                        ),
                                      )
                                      .toList();

                            return ListView.separated(
                              controller: scrollController,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 5),
                              itemCount:
                                  filteredUser.length +
                                  (widget.homeState.isFetchingMore ? 1 : 0),
                              itemBuilder: (_, i) {
                                if (i == filteredUser.length) {
                                  return const CatSkeleton();
                                }
                                final cats = filteredUser[i];
                                return AspectRatio(
                                  aspectRatio: 4 / 3,
                                  child: CardCat(
                                    key: Key('card-cat-${cats.name}'),
                                    cats: cats,
                                    onTap: () => context.pushNamed(
                                      Routes.DETAILS,
                                      extra: cats,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
