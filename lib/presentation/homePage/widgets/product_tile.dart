import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
    required this.size,
    @required this.companyName,
    @required this.postTime,
    @required this.description,
    @required this.price,
    @required this.availableStock,
    @required this.orders,
    @required this.image,
  }) : super(key: key);

  final Size size;

  final String? companyName,
      image,
      postTime,
      description,
      price,
      availableStock,
      orders;

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
                              '$postTime minutes (ago)',
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
                              description!,
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
                                image: NetworkImage(image!),
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
                                'MYR $price.00',
                                style: Theme.of(context).textTheme.subtitle1,
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
                                    .copyWith(fontSize: 14),
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
                                    .copyWith(fontSize: 14),
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
