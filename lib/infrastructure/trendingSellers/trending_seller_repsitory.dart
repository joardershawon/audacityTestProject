import 'dart:convert';
import 'dart:io';

import 'package:audacity_test_project/infrastructure/core/api.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import 'package:audacity_test_project/domain/trendingSellers/i_trending_sellers_repository.dart';
import 'package:audacity_test_project/domain/trendingSellers/trending_sellers.dart';
import 'package:audacity_test_project/infrastructure/trendingSellers/trending_sellers_dto.dart';

@LazySingleton(as: ITrendingSellersRepository)
class TrendingSellerRepository implements ITrendingSellersRepository {
  @override
  Future<List<TrendingSeller>> watchAllSellers() async {
    String fileName = 'trendingsellerdata.json';
    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);

    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      List data = jsonDecode(jsonData)[0];
      final factoredData =
          data.map((e) => TrendingSellerDto.fromJson(e).toDomain()).toList();

      return factoredData;
    } else {
      final catresponse = await http.get(Uri.parse(ApiPath.trendingSellerApi));

      List data = jsonDecode(catresponse.body)[0];
      print(data);

      final factoredData =
          data.map((e) => TrendingSellerDto.fromJson(e).toDomain()).toList();
      file.writeAsStringSync(catresponse.body,
          flush: true, mode: FileMode.write);
      return factoredData;
    }
  }
}
