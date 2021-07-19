import 'package:audacity_test_project/presentation/homePage/widgets/trending_products_list_card.dart';
import 'package:flutter/material.dart';

class TrendingProductsWidget extends StatelessWidget {
  const TrendingProductsWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .23,
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
              itemCount: 10,
              itemBuilder: (context, index) {
                return TrendingProductsListCard(
                  productName: 'BIRIYANI',
                  productPrice: '5 \$',
                  productBgImage:
                      'https://static3.depositphotos.com/1003631/209/i/950/depositphotos_2099183-stock-photo-fine-table-setting-in-gourmet.jpg',
                  size: size,
                );
              },
            ),
          ),
          // const Spacer(),
        ],
      ),
    );
  }
}
