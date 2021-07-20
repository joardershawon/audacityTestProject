import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import 'package:audacity_test_project/domain/Products/i_products_repository.dart';
import 'package:audacity_test_project/domain/Products/product.dart';
import 'package:audacity_test_project/infrastructure/core/api.dart';
import 'package:audacity_test_project/infrastructure/product/product_dto.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  @override
  Future<List<Product>> watchAllProducts() async {
    String fileName = 'productsdata.json';
    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);

    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      List data = jsonDecode(jsonData)[0];
      final factoredData =
          data.map((e) => ProductDto.fromJson(e).toDomain()).toList();

      return factoredData;
    } else {
      final catresponse = await http.get(Uri.parse(ApiPath.productsApi));

      List data = jsonDecode(catresponse.body)[0];

      final factoredData =
          data.map((e) => ProductDto.fromJson(e).toDomain()).toList();
      file.writeAsStringSync(catresponse.body,
          flush: true, mode: FileMode.write);
      return factoredData;
    }
  }
}
