import '../../../../domain/either/either.dart';
import '../../../../domain/repositories/breeds_repository.dart';
import '../../../global/state_notifier.dart';
import 'state/home_state.dart';

class HomeController extends StateNotifier<HomeState> {
  HomeController({required BreedsRepository breedsRepository})
    : _breedsRepository = breedsRepository,
      super(const HomeState.loading());

  final BreedsRepository _breedsRepository;

  Future init({int page = 0, int limit = 15}) async {
    final currentState = state.mapOrNull(loaded: (data) => data.state);

    if (currentState != null && currentState.isFetchingMore) return;

    if (currentState != null) {
      state = HomeState.loaded(currentState.copyWith(isFetchingMore: true));
    }

    if (page > 0) {
      await Future.delayed(const Duration(milliseconds: 1500));
    }

    final resultApi = await _breedsRepository.getBreeds(
      page: page,
      limit: limit,
    );

    state = resultApi.when(
      left: (_) => const HomeState.failed(),
      right: (list) {
        if (list.isEmpty && currentState == null) {
          return const HomeState.loading();
        }

        final result = HomePageState(
          listBreeds: [...currentState?.listBreeds ?? [], ...list],
          page: page,
          isFetchingMore: false,
        );
        return HomeState.loaded(result);
      },
    );
  }
}
