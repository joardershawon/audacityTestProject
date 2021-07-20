import 'package:audacity_test_project/application/homepage/bloc/homepage_bloc.dart';
import 'package:flutter/material.dart';

import 'package:audacity_test_project/presentation/homePage/widgets/new_arrival_widgets.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/product_tile.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/trending_products_widget.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/trending_sellers_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomepageBloc, HomepageState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loading: (_) => Center(child: CircularProgressIndicator()),
          loadSuccess: (_) => SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                TrendingSellersWidget(
                  size: size,
                ),
                TrendingProductsWidget(size: size),
                ProductTile(
                  size: size,
                  index: 0,
                ),
                ProductTile(
                  size: size,
                  index: 1,
                ),
                ProductTile(
                  size: size,
                  index: 2,
                ),
                NewArrivalWidget(size: size),
                ProductTile(size: size, index: 3),
                ProductTile(size: size, index: 4),
                ProductTile(size: size, index: 5),
                ProductTile(size: size, index: 6),
                ProductTile(size: size, index: 7),
              ],
            ),
          ),
        );
      },
    );
  }
}
