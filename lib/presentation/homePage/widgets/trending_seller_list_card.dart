import 'package:flutter/material.dart';

class TrendingSellerListCard extends StatelessWidget {
  const TrendingSellerListCard({
    Key? key,
    @required this.sellerName,
    @required this.sellerCircleImage,
    @required this.sellerBgImage,
    @required this.size,
  }) : super(key: key);
  final String? sellerName, sellerCircleImage, sellerBgImage;
  // final Color? nameContainerClr, nameClr;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: size!.height * .20,
          width: size!.width * .25,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                sellerBgImage!,
              ),
            ),
          ),
          child: Stack(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            children: [
              Positioned(
                top: 5,
                left: 5,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Theme.of(context).accentColor,
                  backgroundImage: NetworkImage(
                    sellerCircleImage!,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.black45,
                  child: Text(
                    sellerName!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
