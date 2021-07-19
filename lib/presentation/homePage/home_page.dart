import 'package:flutter/material.dart';

import 'package:audacity_test_project/presentation/homePage/widgets/new_arrival_widgets.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/product_tile.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/trending_products_widget.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/trending_sellers_widget.dart';

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
              TrendingSellersWidget(
                size: size,
              ),
              TrendingProductsWidget(size: size),
              ProductTile(
                size: size,
                companyName: 'Green Success Trading and Data',
                postTime: '2',
                description:
                    'Nurul Aman has made payment and bought Korean Chicken Crispy for MYR 9',
                image:
                    'https://static3.depositphotos.com/1003631/209/i/950/depositphotos_2099183-stock-photo-fine-table-setting-in-gourmet.jpg',
                price: '10',
                availableStock: '20',
                orders: '2',
              ),
              NewArrivalWidget(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
