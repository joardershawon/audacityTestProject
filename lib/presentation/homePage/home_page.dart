import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.only(
                  left: 5,
                  top: 5,
                ),
                color: Theme.of(context).primaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Trending Sellers'),
                    const Spacer(),
                    AspectRatio(
                      aspectRatio: 3,
                      child: Container(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return TrendingSellersIconCard();
                          },
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrendingSellersIconCard extends StatelessWidget {
  const TrendingSellersIconCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: size.height * .20,
          width: size.width * .22,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            children: [
              Center(
                child: Icon(
                  Icons.ac_unit,
                  size: 50,
                ),
              ),
              Positioned(
                top: 5,
                left: 5,
                child: CircleAvatar(),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(5 / 2),
                  color: Colors.black45,
                  child: Text(
                    'IMCARE SDN BDSD',
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
