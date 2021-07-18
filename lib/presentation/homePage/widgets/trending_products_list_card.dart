import 'package:flutter/material.dart';

class TrendingProductsListCard extends StatelessWidget {
  const TrendingProductsListCard({
    Key? key,
    @required this.productName,
    @required this.productBgImage,
    @required this.size,
    @required this.productPrice,
  }) : super(key: key);

  final String? productName, productBgImage, productPrice;

  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              color: Colors.black.withOpacity(.4),
              blurRadius: 2,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: size!.width * .27,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    productBgImage!,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        productName!,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        productPrice!,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
