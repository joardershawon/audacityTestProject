part of 'homepage_bloc.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState.initial() = _Initial;
  const factory HomepageState.loading() = _Loading;
  const factory HomepageState.loadSuccess(
    List<TrendingSeller> trendingSeller,
    List<TrendingProduct> trendingProduct,
    List<Product> products,
    List<NewArrival> newArrival,
  ) = _LoadSuccess;
}
