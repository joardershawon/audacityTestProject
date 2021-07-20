import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
    required this.size,
    @required this.companyName,
    @required this.postTime,
    @required this.caption,
    @required this.price,
    @required this.availableStock,
    @required this.orders,
    @required this.image,
    @required this.currencyCode,
    @required this.companyLogo,
  }) : super(key: key);

  final Size size;

  final String? companyName,
      image,
      companyLogo,
      postTime,
      caption,
      price,
      availableStock,
      orders,
      currencyCode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(2, 2),
              blurRadius: 5,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: size.height * .4,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 0,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          //*TODO : setImage //
                          backgroundImage:
                              CachedNetworkImageProvider(companyLogo!),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              companyName!,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              postTime!,
                              style: Theme.of(context).textTheme.subtitle2,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    height: size.height * .3,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: Text(
                              caption!,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            height: size.height * .25,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(image!),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.shop,
                              ),
                              Text(
                                '$currencyCode $price'.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.menu,
                              ),
                              Text(
                                '$availableStock Available Stock',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                              ),
                              Text(
                                '$orders Order(s)',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
