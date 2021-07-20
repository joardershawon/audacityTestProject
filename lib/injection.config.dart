// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/homepage/bloc/homepage_bloc.dart' as _i9;
import 'domain/Products/i_products_repository.dart' as _i3;
import 'domain/trendingProducts/i_trending_product_repository.dart' as _i5;
import 'domain/trendingSellers/i_trending_sellers_repository.dart' as _i7;
import 'infrastructure/product/product_repository.dart' as _i4;
import 'infrastructure/trendingProducts/trending_products_repo.dart' as _i6;
import 'infrastructure/trendingSellers/trending_seller_repsitory.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IProductRepository>(() => _i4.ProductRepository());
  gh.lazySingleton<_i5.ITrendingProductRepository>(
      () => _i6.TrendingProductsRepsitory());
  gh.lazySingleton<_i7.ITrendingSellersRepository>(
      () => _i8.TrendingSellerRepository());
  gh.factory<_i9.HomepageBloc>(() => _i9.HomepageBloc(
      get<_i3.IProductRepository>(),
      get<_i7.ITrendingSellersRepository>(),
      get<_i5.ITrendingProductRepository>()));
  return get;
}
