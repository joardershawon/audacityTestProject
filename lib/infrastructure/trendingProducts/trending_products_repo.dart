import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import 'package:audacity_test_project/domain/trendingProducts/i_trending_product_repository.dart';
import 'package:audacity_test_project/domain/trendingProducts/trending_product.dart';
import 'package:audacity_test_project/infrastructure/core/api.dart';
import 'package:audacity_test_project/infrastructure/trendingProducts/trending_product_dto.dart';

@LazySingleton(as: ITrendingProductRepository)
class TrendingProductsRepsitory implements ITrendingProductRepository {
  @override
  Future<List<TrendingProduct>> watchAllTrendingProducts() async {
    String fileName = 'trendingproductsdata.json';
    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);

    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      List data = jsonDecode(jsonData)[0];
      final factoredData =
          data.map((e) => TrendingProductDto.fromJson(e).toDomain()).toList();

      return factoredData;
    } else {
      final catresponse =
          await http.get(Uri.parse(ApiPath.trendingProductsApi));

      List data = jsonDecode(catresponse.body)[0];

      final factoredData =
          data.map((e) => TrendingProductDto.fromJson(e).toDomain()).toList();
      file.writeAsStringSync(catresponse.body,
          flush: true, mode: FileMode.write);
      return factoredData;
    }
  }
}
