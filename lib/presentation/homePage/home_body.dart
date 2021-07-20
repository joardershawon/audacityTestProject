import 'package:audacity_test_project/application/homepage/bloc/homepage_bloc.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/new_arrival_widgets.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/product_tile.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/trending_products_widget.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/trending_sellers_widget.dart';
import 'package:flutter/material.dart';
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
          loadSuccess: (state) => SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                TrendingSellersWidget(
                  size: size,
                ),
                TrendingProductsWidget(size: size),
                ProductTile(
                  size: size,
                  companyName: state.products[0].productShopName!.value,
                  companyLogo: state.products[0].productShopLogo!.value,
                  postTime: state.products[0].productFriendlyTimeDiff!.value,
                  caption: state.products[0].productStory!.value,
                  image: state.products[0].productStoryImage!.value,
                  price: state.products[0].productUnitPrice!.value.toString(),
                  currencyCode: state.products[0].productCurrencyCode!.value,
                  availableStock:
                      state.products[0].productAvailableStock!.value.toString(),
                  orders: state.products[0].productOrderQty!.value.toString(),
                ),
                ProductTile(
                  size: size,
                  companyName: state.products[1].productShopName!.value,
                  companyLogo: state.products[1].productShopLogo!.value,
                  postTime: state.products[1].productFriendlyTimeDiff!.value,
                  caption: state.products[1].productStory!.value,
                  image: state.products[1].productStoryImage!.value,
                  price: state.products[1].productUnitPrice!.value.toString(),
                  currencyCode: state.products[1].productCurrencyCode!.value,
                  availableStock:
                      state.products[1].productAvailableStock!.value.toString(),
                  orders: state.products[1].productOrderQty!.value.toString(),
                ),
                ProductTile(
                  size: size,
                  companyName: state.products[2].productShopName!.value,
                  companyLogo: state.products[2].productShopLogo!.value,
                  postTime: state.products[2].productFriendlyTimeDiff!.value,
                  caption: state.products[2].productStory!.value,
                  image: state.products[2].productStoryImage!.value,
                  price: state.products[2].productUnitPrice!.value.toString(),
                  currencyCode: state.products[2].productCurrencyCode!.value,
                  availableStock:
                      state.products[2].productAvailableStock!.value.toString(),
                  orders: state.products[2].productOrderQty!.value.toString(),
                ),
                NewArrivalWidget(size: size),
                ProductTile(
                  size: size,
                  companyName: state.products[3].productShopName!.value,
                  companyLogo: state.products[3].productShopLogo!.value,
                  postTime: state.products[3].productFriendlyTimeDiff!.value,
                  caption: state.products[3].productStory!.value,
                  image: state.products[3].productStoryImage!.value,
                  price: state.products[3].productUnitPrice!.value.toString(),
                  currencyCode: state.products[3].productCurrencyCode!.value,
                  availableStock:
                      state.products[3].productAvailableStock!.value.toString(),
                  orders: state.products[3].productOrderQty!.value.toString(),
                ),
                ProductTile(
                  size: size,
                  companyName: state.products[4].productShopName!.value,
                  companyLogo: state.products[4].productShopLogo!.value,
                  postTime: state.products[4].productFriendlyTimeDiff!.value,
                  caption: state.products[4].productStory!.value,
                  image: state.products[4].productStoryImage!.value,
                  price: state.products[4].productUnitPrice!.value.toString(),
                  currencyCode: state.products[4].productCurrencyCode!.value,
                  availableStock:
                      state.products[4].productAvailableStock!.value.toString(),
                  orders: state.products[4].productOrderQty!.value.toString(),
                ),
                ProductTile(
                  size: size,
                  companyName: state.products[5].productShopName!.value,
                  companyLogo: state.products[5].productShopLogo!.value,
                  postTime: state.products[5].productFriendlyTimeDiff!.value,
                  caption: state.products[5].productStory!.value,
                  image: state.products[5].productStoryImage!.value,
                  price: state.products[5].productUnitPrice!.value.toString(),
                  currencyCode: state.products[5].productCurrencyCode!.value,
                  availableStock:
                      state.products[5].productAvailableStock!.value.toString(),
                  orders: state.products[5].productOrderQty!.value.toString(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
