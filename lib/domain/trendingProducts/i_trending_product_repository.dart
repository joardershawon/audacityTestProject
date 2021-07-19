import 'package:audacity_test_project/domain/trendingProducts/trending_product.dart';

abstract class ITrendingProductRepository {
  Future<List<TrendingProduct>> watchAllProducts();
}
