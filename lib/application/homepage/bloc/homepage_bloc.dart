import 'dart:async';

import 'package:audacity_test_project/domain/Products/i_products_repository.dart';
import 'package:audacity_test_project/domain/Products/product.dart';
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
  HomepageBloc(this._iProductRepository, this._iTrendingSellersRepository,
      this._iTrendingProductRepository)
      : super(_Initial());
  ITrendingSellersRepository _iTrendingSellersRepository;
  ITrendingProductRepository _iTrendingProductRepository;
  IProductRepository _iProductRepository;
  @override
  Stream<HomepageState> mapEventToState(
    HomepageEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield HomepageState.loading();
        //*TrendingSellers//
        final trendingSeller =
            await _iTrendingSellersRepository.watchAllSellers();
        //*Trending Products//
        final trendingProducts =
            await _iTrendingProductRepository.watchAllTrendingProducts();
        //*Products//
        final products = await _iProductRepository.watchAllProducts();

        yield HomepageState.loadSuccess(
          trendingSeller,
          trendingProducts,
          products,
        );
      },
    );
  }
}
