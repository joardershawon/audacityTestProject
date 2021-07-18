import 'package:audacity_test_project/presentation/homePage/widgets/new_arrival_card.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/product_tile.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/trending_seller_list_card.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/trending_products_list_card.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/trending_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TrendingWidget(
                size: size,
                itemCount: 10,
                widgetName: 'Trending Sellers',
                widget: TrendingSellerListCard(
                  size: size,
                  sellerName: 'IMCARE SDN BDSD',
                  sellerBgImage:
                      'https://static3.depositphotos.com/1003631/209/i/950/depositphotos_2099183-stock-photo-fine-table-setting-in-gourmet.jpg',
                  sellerCircleImage:
                      'https://widgetwhats.com/app/uploads/2019/11/free-profile-photo-whatsapp-2.png',
                ),
              ),
              TrendingWidget(
                size: size,
                itemCount: 5,
                widgetName: 'Trending Products',
                widget: TrendingProductsListCard(
                  productName: 'BIRIYANI',
                  productPrice: '5 \$',
                  productBgImage:
                      'https://static3.depositphotos.com/1003631/209/i/950/depositphotos_2099183-stock-photo-fine-table-setting-in-gourmet.jpg',
                  size: size,
                ),
              ),
              ProductTile(size: size),
              ProductTile(size: size),
              ProductTile(size: size),
              TrendingWidget(
                size: size,
                widgetName: 'New Arrivals',
                widget: NewArrivalCard(
                  productName: 'MM SQUARE 2.4L',
                  productBgImage:
                      'https://static3.depositphotos.com/1003631/209/i/950/depositphotos_2099183-stock-photo-fine-table-setting-in-gourmet.jpg',
                  size: size,
                  productPrice: 'Price : MYR 50.00',
                ),
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
