import 'package:audacity_test_project/domain/newArrivals/new_arrival.dart';

abstract class INewArrivalsRepository {
  Future<List<NewArrival>> watchAllNewArrivals();
}
