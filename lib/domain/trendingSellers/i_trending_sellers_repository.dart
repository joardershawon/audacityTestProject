import 'package:audacity_test_project/domain/trendingSellers/trending_sellers.dart';

abstract class ITrendingSellersRepository {
  Future<List<TrendingSeller>> watchAllSellers();
}
