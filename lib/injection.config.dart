// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/homepage/bloc/homepage_bloc.dart' as _i11;
import 'domain/newArrivals/i_new_arrivals.dart' as _i3;
import 'domain/Products/i_products_repository.dart' as _i5;
import 'domain/trendingProducts/i_trending_product_repository.dart' as _i7;
import 'domain/trendingSellers/i_trending_sellers_repository.dart' as _i9;
import 'infrastructure/newArrivals/new_arrivals_repository.dart' as _i4;
import 'infrastructure/product/product_repository.dart' as _i6;
import 'infrastructure/trendingProducts/trending_products_repo.dart' as _i8;
import 'infrastructure/trendingSellers/trending_seller_repsitory.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.INewArrivalsRepository>(
      () => _i4.NewArrivalsRepository());
  gh.lazySingleton<_i5.IProductRepository>(() => _i6.ProductRepository());
  gh.lazySingleton<_i7.ITrendingProductRepository>(
      () => _i8.TrendingProductsRepsitory());
  gh.lazySingleton<_i9.ITrendingSellersRepository>(
      () => _i10.TrendingSellerRepository());
  gh.factory<_i11.HomepageBloc>(() => _i11.HomepageBloc(
      get<_i5.IProductRepository>(),
      get<_i9.ITrendingSellersRepository>(),
      get<_i3.INewArrivalsRepository>(),
      get<_i7.ITrendingProductRepository>()));
  return get;
}
