// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/homepage/bloc/homepage_bloc.dart' as _i5;
import 'domain/trendingSellers/i_trending_sellers_repository.dart' as _i3;
import 'infrastructure/trendingSellers/trending_seller_repsitory.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ITrendingSellersRepository>(
      () => _i4.TrendingSellerRepository());
  gh.factory<_i5.HomepageBloc>(
      () => _i5.HomepageBloc(get<_i3.ITrendingSellersRepository>()));
  return get;
}
