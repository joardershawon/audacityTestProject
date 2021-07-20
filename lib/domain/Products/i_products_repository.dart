import 'package:audacity_test_project/domain/Products/product.dart';

abstract class IProductRepository {
  Future<List<Product>> watchAllProducts();
}
