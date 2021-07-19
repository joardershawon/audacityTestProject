import 'dart:async';

import 'package:audacity_test_project/domain/trendingProducts/i_trending_product_repository.dart';
import 'package:audacity_test_project/domain/trendingProducts/trending_product.dart';
import 'package:audacity_test_project/domain/trendingSellers/i_trending_sellers_repository.dart';
import 'package:audacity_test_project/domain/trendingSellers/trending_sellers.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';
part 'homepage_bloc.freezed.dart';

@injectable
class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc(
      this._iTrendingSellersRepository, this._iTrendingProductRepository)
      : super(_Initial());
  ITrendingSellersRepository _iTrendingSellersRepository;
  ITrendingProductRepository _iTrendingProductRepository;
  @override
  Stream<HomepageState> mapEventToState(
    HomepageEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield HomepageState.loading();
        final trendingSeller =
            await _iTrendingSellersRepository.watchAllSellers();
        final trendingProducts =
            await _iTrendingProductRepository.watchAllProducts();
        yield HomepageState.loadSuccess(
          trendingSeller,
          trendingProducts,
        );
      },
    );
  }
}
