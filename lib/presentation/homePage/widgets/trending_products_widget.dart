import 'package:audacity_test_project/application/homepage/bloc/homepage_bloc.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/trending_products_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingProductsWidget extends StatelessWidget {
  const TrendingProductsWidget({
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
          loading: (_) => CircularProgressIndicator(),
          loadSuccess: (state) {
            return Container(
              height: size.height * .25,
              width: size.width,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.only(
                left: 5,
                // top: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).accentColor.withOpacity(.8),
                    offset: Offset(2, 5),
                    spreadRadius: 0,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trending Products',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Container(
                    height: size.height * .18,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.trendingProduct.length,
                      itemBuilder: (context, index) {
                        return TrendingProductsListCard(
                          productName: state.trendingProduct[index]
                              .trendingproductName!.value,
                          productPrice: state.trendingProduct[index]
                              .trendingproductShortDetails!.value,
                          productBgImage: state.trendingProduct[index]
                              .trendingproductImage!.value,
                          size: size,
                        );
                      },
                    ),
                  ),
                  // const Spacer(),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
