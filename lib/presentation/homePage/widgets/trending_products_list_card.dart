import 'package:cached_network_image/cached_network_image.dart';
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
              color: Colors.black.withOpacity(.3),
              blurRadius: 2,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: size!.width * .3,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                    productBgImage!,
                  ),
                )),
            child: Column(
              children: [
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text(
                              productName!,
                              // overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
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
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
