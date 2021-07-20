import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import 'package:audacity_test_project/domain/newArrivals/i_new_arrivals.dart';
import 'package:audacity_test_project/domain/newArrivals/new_arrival.dart';
import 'package:audacity_test_project/infrastructure/core/api.dart';
import 'package:audacity_test_project/infrastructure/newArrivals/new_arrivals_dto.dart';

@LazySingleton(as: INewArrivalsRepository)
class NewArrivalsRepository implements INewArrivalsRepository {
  @override
  Future<List<NewArrival>> watchAllNewArrivals() async {
    String fileName = 'newArrivalsdata.json';
    var dir = await getTemporaryDirectory();

    File file = File(dir.path + "/" + fileName);

    if (file.existsSync()) {
      var jsonData = file.readAsStringSync();
      List data = jsonDecode(jsonData)[0];
      final factoredData =
          data.map((e) => NewArrivalsDto.fromJson(e).toDomain()).toList();

      return factoredData;
    } else {
      final catresponse = await http.get(Uri.parse(ApiPath.newArrivalsApi));

      List data = jsonDecode(catresponse.body)[0];

      final factoredData =
          data.map((e) => NewArrivalsDto.fromJson(e).toDomain()).toList();
      file.writeAsStringSync(catresponse.body,
          flush: true, mode: FileMode.write);
      return factoredData;
    }
  }
}
