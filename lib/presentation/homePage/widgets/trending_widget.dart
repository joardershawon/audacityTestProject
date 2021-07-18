import 'package:flutter/material.dart';

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({
    Key? key,
    required this.size,
    @required this.widgetName,
    @required this.widget,
    @required this.itemCount,
  }) : super(key: key);
  final String? widgetName;
  final int? itemCount;
  final Widget? widget;
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
          Text(widgetName!),
          Container(
            height: size.height * .18,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemCount,
              itemBuilder: (context, index) {
                return widget!;
              },
            ),
          ),
          // const Spacer(),
        ],
      ),
    );
  }
}
